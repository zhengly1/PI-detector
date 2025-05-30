import numpy as np
import matplotlib.pyplot as plt
import mpmath
import os
import argparse
import json
import matplotlib.ticker as ticker
from matplotlib.ticker import LogLocator
import time

from tqdm import tqdm
from scipy.stats import spearmanr, pearsonr

os.chdir("/pi-detector/script")
from oracle_mpmath import func_dict as gsl_func_dict

sort_key = lambda d: dict(sorted({int(k): v for k, v in d.items()}.items()))

def ErrULP(fx, fx_hat):  # dtype=np.float128
    # Calculate the error based on ULP
    # print(fx, fx_hat)
    ulp_fx = np.nextafter(fx, np.inf) - fx  # ULP of fx
    return np.abs(fx - fx_hat) / ulp_fx if ulp_fx != 0 else 1e20


def RelErr(output, oracle):
    oracle = float(mpmath.mpf(oracle))
    output = float(mpmath.mpf(output))
    delta = abs(output-oracle)
    if delta == 0:
        return 0
    try:
        if oracle!=0:
            return abs(delta / oracle)
        else:
            if output!=0:
                return abs(delta / output)
            else:
                return 0.0
    except:
        return float("inf")

# def RelErr(output, oracle):
#     # Convert output and oracle to mpmath.mpf types
#     oracle = mpmath.mpf(oracle)
#     output = mpmath.mpf(output)
    
#     # Calculate absolute difference
#     delta = abs(output - oracle)
    
#     if delta == 0:
#         return float(mpmath.mpf(0))
    
#     try:
#         if oracle != 0:
#             # Return relative error using mpmath for precision, cast to float at the end
#             return float(abs(delta / oracle))
#         else:
#             if output != 0:
#                 return float(abs(delta / output))
#             else:
#                 return float(mpmath.mpf(0))
#     except:
#         return float(mpmath.inf)

def plot_line_chart(ax, X, ulp_err, ulp_err_2, correlation, plot_ice=True):
    ax.plot(
        X,
        ulp_err_2,
        label="ULP Error (High-precision approach)",
        marker="s",
        linestyle=":",
        color="red",
        linewidth=2,
    )
    if plot_ice:
        ax.plot(X, ulp_err, label="ULP Error (PI-detector)", marker="o", linestyle="-", color="blue")
    ax.tick_params(axis="both", which="major", labelsize=26)  # 设置刻度标签的字体大小
    ax.tick_params(axis="x", which="major", labelsize=26, rotation=0)
    ax.set_xlabel("X", fontsize=26)
    ax.set_ylabel("ULP Error", fontsize=26)
    ax.set_yscale("log")
    ax.xaxis.get_offset_text().set_fontsize(26)
    
    # # Disable scientific notation for the x-axis
    # formatter = ticker.ScalarFormatter(useMathText=False)
    # formatter.set_scientific(False)
    # ax.xaxis.set_major_formatter(formatter)
    
    # # Optionally adjust tick precision if necessary:
    # ax.xaxis.set_major_formatter(ticker.FuncFormatter(lambda x, _: f'{x:.13f}'))

    ax.grid(True, which="both", linestyle="--", linewidth=1)
    if plot_ice:
        ax.legend(fontsize=22)
        # ax.text(
        #     0.05,
        #     0.95,
        #     f"Correlation: {correlation:.2f}",
        #     transform=ax.transAxes,
        #     fontsize=18,
        #     verticalalignment="top",
        #     bbox=dict(boxstyle="round,pad=0.3", edgecolor="black", facecolor="white"),
        # )

    return correlation


def calculate_high_precision(func, X, prec=128):
    mpmath.mp.prec = prec
    return [
        float(result.real) if result is not None else None
        for result in (func(mpmath.mpf(str(x))) for x in X)
    ]


def atom_plot(data, output_dir, enable_relerr):
    low_cor_funcs = []
    correlations = {}
    times = {}
    pb = tqdm(data.items(), desc="")
    for func_idx, func_info in pb:
        func_idx = int(func_idx)
        pb.set_description(str(func_idx))

        # ! Debug
        # if func_idx in [90]:
        #     continue
        
        
        # if func_idx not in [73]:
        #     continue
        

        inputs_list = func_info["inputs"]
        errors_list = func_info["errors"]
        results_list = func_info["results"]
        func_info["results_std"] = []
        func_info["errors_std"] = []

        if output_dir is not None:
            os.makedirs(output_dir, exist_ok=True)
            
            num_plots = len(inputs_list)
            fig, axes = plt.subplots(num_plots, 1, figsize=(18, num_plots * 7))

            # 检查 axes 是否是单个 Axes 对象
            axes = [axes] if num_plots == 1 else axes.flatten()

            # fig.suptitle(f"FuncIdx: {func_idx}", fontsize=24, fontweight='bold', y=0.99)

        correlations[func_idx] = []
        times[func_idx] = []
        for i, (inputs, results, errors) in enumerate(
            zip(inputs_list, results_list, errors_list)
        ):

            X = inputs
            Y = results
            ulp_err = errors
            
            # if func_idx not in {9, 10, 24, 25, 32, 61, 80, 101}:
            #     # 按顺序检查相邻的 ulp_err 元素，判断差异是否达到两个数量级
            #     j = 0
            #     while j < len(ulp_err) - 1:  # 遍历到倒数第二个元素
            #         # 判断相邻两个元素之间是否有两个数量级的差异
            #         if ulp_err[j] != 0 and abs(ulp_err[j+1] / ulp_err[j]) >= 100:
            #             # 移除 j+1 对应的元素
            #             x_p = X.pop(j+1)
            #             y_p = Y.pop(j+1)
            #             u_p = ulp_err.pop(j+1)
            #             print(x_p, y_p, u_p)
            #         else:
            #             j += 1  # 只有在没有删除元素时才递增索引      
            

            try:
                start_time = time.time()
                Y_std = calculate_high_precision(
                    gsl_func_dict[func_idx]["func"], X, 128
                )
                

                # 计算Relative Error
                if enable_relerr:
                    std_ulp_err = np.array([RelErr(y, y_i) for y, y_i in zip(Y, Y_std)]).tolist()
                else:
                    std_ulp_err = np.array([ErrULP(y, y_i) for y, y_i in zip(Y, Y_std)]).tolist()
                
                end_time = time.time()
                times[func_idx].append(end_time - start_time)
                
                # Save mpmath result
                func_info["results_std"] = func_info.get("results_std", []) + [Y_std]
                func_info["errors_std"] = func_info.get("errors_std", []) + [std_ulp_err]

                if output_dir is None:
                    continue

                threshold = 1e20  # 定义阈值

                # 将 std_ulp_err 和 ulp_err 中大于 threshold 的值限制为 threshold
                ulp_err = np.clip(ulp_err, -threshold, threshold)
                std_ulp_err = np.clip(std_ulp_err, -threshold, threshold)

                # 计算相关性系数，避免ulp_err全为0时出错
                if np.all(ulp_err == 0) or np.all(std_ulp_err == 0):
                    pearson_cor, pearson_pvalue = +0.0, +0.0
                    spearman_cor, spearman_pvalue = +0.0, +0.0
                else:
                    pearson_cor, pearson_pvalue = pearsonr(ulp_err, std_ulp_err)
                    spearman_cor, spearman_pvalue = spearmanr(ulp_err, std_ulp_err)

                # 在子图上绘制ULP差异和高精度ULP差异
                plot_line_chart(
                    axes[i], X, ulp_err, std_ulp_err, pearson_cor, plot_ice=True
                )
                
                correlations[func_idx].append({
                    "pearson": (float(pearson_cor), float(pearson_pvalue)),
                    "spearman": (float(spearman_cor), float(spearman_pvalue))
                })

                if pearson_cor < 0.6:
                    low_cor_funcs.append((func_idx, pearson_cor))

            except Exception as e:
                import traceback
                traceback.print_exc()
                print(f"Error in Func {func_idx}: {e}")

        if output_dir is not None:
            plt.tight_layout()
            plt.savefig(os.path.join(output_dir, f"{func_idx}.png"))
            plt.savefig(os.path.join(output_dir, f"{func_idx}.pdf"), dpi=600, bbox_inches = 'tight')
            plt.close(fig)

    # print("Low correlation functions (< 0.6):")
    # for i, c in low_cor_funcs:
    #     print(f"Function: {i}, Correlation: {c:.3f}")

    # # print(correlations)
    # print(times)
    # for k, vs in times.items():
    #     for v in vs:
    #         print(v * 1000)


def hsed_plot(data, output_dir, enable_relerr):
    low_cor_funcs = []
    correlations = {}
    for func_idx, func_info in tqdm(data.items()):

        func_idx = int(func_idx)
        num_plots = len(func_info["inputs"])
        fig, axes = plt.subplots(num_plots, 1, figsize=(20, num_plots * 10))

        # 检查 axes 是否是单个 Axes 对象
        axes = [axes] if num_plots == 1 else axes.flatten()

        # fig.suptitle(f"FuncIdx: {func_idx}", fontsize=24, fontweight='bold', y=0.99)

        correlations[func_idx] = []
        
        for i, (X, Y, ulp_err, std_ulp_err) in enumerate(
            zip(
                func_info["inputs"],
                func_info["results"],
                func_info["errors"],
                func_info["errors_std"],
            )
        ):
            try:
                threshold = 1e20  # 定义阈值

                # 将 std_ulp_err 和 ulp_err 中大于 threshold 的值限制为 threshold
                ulp_err = np.clip(ulp_err, -threshold, threshold)
                std_ulp_err = np.clip(std_ulp_err, -threshold, threshold)

                # 计算相关性系数，避免ulp_err全为0时出错
                pearson_cor, pearson_pvalue = pearsonr(ulp_err, std_ulp_err)
                spearman_cor, spearman_pvalue = spearmanr(ulp_err, std_ulp_err)

                # 在子图上绘制ULP差异和高精度ULP差异
                plot_line_chart(axes[i], X, ulp_err, std_ulp_err, pearson_cor)

                if pearson_cor < 0.6:
                    low_cor_funcs.append((func_idx, pearson_cor))

                correlations[func_idx].append({
                    "pearson": (float(pearson_cor), float(pearson_pvalue)),
                    "spearman": (float(spearman_cor), float(spearman_pvalue))
                })


            except Exception as e:
                print(f"Error in Func {func_idx}: {e}")

        plt.tight_layout()
        plt.savefig(os.path.join(output_dir, f"{func_idx}.png"))
        # plt.savefig('73_hp_our.pdf', dpi=600, bbox_inches = 'tight')
        plt.close(fig)

    print("Low correlation functions (< 0.6):")
    for i, c in low_cor_funcs:
        print(f"Function: {i}, Correlation: {c:.3f}")

    print(correlations)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="A script to analyze function errors using ULP and plot correlation with high precision results."
    )

    parser.add_argument(
        "-l",
        "--lib",
        type=str,
        required=True,
        choices=["atom", "hsed", "fpcc"],
        help="Choose the lib to run ('atom' or 'hsed' or 'fpcc').",
    )

    parser.add_argument(
        "-d",
        "--data",
        type=str,
        required=True,
        help="Path to the JSON file containing the input data for function analysis.",
    )

    parser.add_argument(
        "-o",
        "--output",
        type=str,
        required=False,
        help="Directory where output images (plots) will be saved.",
    )
    
    parser.add_argument(
        "-r",
        "--relerr",
        action="store_true",
        help="Use relative error instead of ULP error for calculations.",
    )

    args = parser.parse_args()

    # Load data
    with open(args.data, "r") as f:
        data = sort_key(json.load(f))

    # Create output directory if it doesn't exist
    if args.output is not None:
        os.makedirs(args.output, exist_ok=True)

    # Choose which plot to generate based on flags
    if args.lib == "hsed":
        hsed_plot(data, args.output, args.relerr)
    else:
        atom_plot(data, args.output, args.relerr)
    
    with open(args.data, "w") as f:
        json.dump(data, f, indent=2)
