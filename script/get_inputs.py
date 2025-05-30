import json
import numpy as np
from tqdm import tqdm
import json
import argparse

sort_key = lambda d: dict(sorted({int(k): v for k, v in d.items()}.items()))

def find_ulp_neighbors(value, ulp_expand, ulp_step=1, dtype=np.float64):
    # 将输入值转换为指定的数据类型
    ulp_step = int(ulp_step)
    current_value = dtype(value)

    # 存储左右拓展的 ULP 值
    left_values = []
    right_values = []

    # 向左拓展
    left_value = current_value
    for _ in range(ulp_expand):
        next_value = np.nextafter(left_value, -np.inf, dtype=dtype)
        for _ in range(ulp_step - 1):
            temp_value = np.nextafter(next_value, -np.inf, dtype=dtype)
            if temp_value == next_value:
                break
            next_value = temp_value

        # 如果 next_value 与 left_value 相等，说明已经达到浮点数表示的极限
        if next_value == left_value:
            break

        left_values.append(next_value)
        left_value = next_value

    # 向右拓展
    right_value = current_value
    for _ in range(ulp_expand):
        next_value = np.nextafter(right_value, np.inf, dtype=dtype)
        for _ in range(ulp_step - 1):
            temp_value = np.nextafter(next_value, np.inf, dtype=dtype)
            if temp_value == next_value:
                break
            next_value = temp_value

        # 如果 next_value 与 right_value 相等，说明已经达到浮点数表示的极限
        if next_value == right_value:
            break

        right_values.append(next_value)
        right_value = next_value

    # 将左侧值反转并与当前值和右侧值合并
    return np.array(left_values[::-1] + [current_value] + right_values)


def find_neighbors(value, expand, factor=0.1, dtype=np.float64):
    # 将输入值转换为指定的数据类型
    current_value = dtype(value)

    # 计算步长为 factor * value
    step_size = dtype(factor * value)

    # 存储左右拓展的值
    left_values = []
    right_values = []

    # 向左拓展
    left_value = current_value
    for _ in range(expand):
        next_value = left_value - step_size
        if next_value == left_value:  # 处理浮点数极限
            break
        left_values.append(next_value)
        left_value = next_value

    # 向右拓展
    right_value = current_value
    for _ in range(expand):
        next_value = right_value + step_size
        if next_value == right_value:  # 处理浮点数极限
            break
        right_values.append(next_value)
        right_value = next_value

    # 将左侧值反转并与当前值和右侧值合并
    return np.array(sorted(left_values[::-1] + [current_value] + right_values))


def gsl_X_filter(func_idx, X):
    epsilon = np.finfo(np.float64).eps
    
    result = np.copy(X)
    
    if func_idx in [5]:
        result = result[X < 100]

    elif func_idx in [10, 11, 25, 27, 64, 102]:
        result = result[X > 0]

    elif func_idx == 42:
        result = result[X > -0.9]

    elif func_idx in [48, 49]:
        result = result[(X > 0) & (X < 20)]

    elif func_idx in [74]:
        # gamma
        # 去掉 X <= -169 的部分
        result = result[X > -169]
    elif func_idx == 76:
        # gammainv
        # 去掉 X >= 171 的部分
        result = result[X < 171]
    
    elif func_idx in [77, 78]:
        result = result[X + 1 / np.e >= 0]
    
    elif func_idx in [82, 83]:
        result = result[(X > -1) & (X != 1.0)]
    
    elif func_idx in [88, 90]:
        # psi_1
        # 去掉负整数
        result = result[
            ~(
                (X <= 0)
                & (np.abs(X - np.round(X)) < epsilon)
            )
        ]
    
    # elif func_idx in [104]:
    #     result = result[(X != 1.0) & (X > -170)]
    
    elif func_idx in [105, 106]:
        result = result[X > -170]
        
    return result


def gsl_neighbour(data, ulp_expand, ulp_step, func, sigerr):

    def is_valid_input_item(input_item):
        if sigerr:
            relative_err = float(input_item["relative_err"])
            return relative_err >= 1e-3
        else:
            return True

    range_dict = {}
    for func_idx, info in tqdm(data.items()):
        if not info["input_list"]:
            continue

        # ! Debug
        # if func_idx not in [77, 78]:
        #     continue
        # if func_idx not in [90]:
        #     continue

        r_list = []
        for i, input_item in enumerate(info["input_list"]):
            # if (func_idx, i) in special_cases:
            #     X = gsl_X_filter(func_idx, func(input_item["input"], ulp_expand, ulp_step, dtype=np.float64)).tolist()
            #     if X:
            #         r_list.append(X)
            
            if is_valid_input_item(input_item):
                X = gsl_X_filter(func_idx, func(input_item["input"], ulp_expand, ulp_step, dtype=np.float64)).tolist()
                if X:
                    r_list.append(X)
                else:
                    print(f"Warning: {input_item['input']} in function {func_idx}.")
        if r_list:
            range_dict[func_idx] = {"inputs": r_list}

    return range_dict


def hsed_neighbour(data, ulp_expand, ulp_step, func, sigerr):
    if sigerr:
        return {
            func_idx: {"inputs": [func(func_info["input"], ulp_expand, ulp_step, dtype=np.float32).tolist()]}
            for func_idx, func_info in tqdm(sort_key(data).items()) if func_idx in [7, 23]
        }
    else:
        return {
            func_idx: {"inputs": [func(func_info["input"], ulp_expand, ulp_step, dtype=np.float32).tolist()]}
            for func_idx, func_info in tqdm(sort_key(data).items())
        }


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Calculate ULP neighbour for input data."
    )
    parser.add_argument(
        "lib",
        choices=["gsl", "hsed", "fpcc"],
        help="Choose the lib to run ('gsl' or 'hsed' or 'fpcc').",
    )
    parser.add_argument("ulp_expand", type=int, help="ULP expansion distance.")
    parser.add_argument("ulp_step", type=float, help="ULP step size.")
    parser.add_argument("output", type=str, help="Path to save the output JSON data.")
    parser.add_argument(
        "-s",
        "--sigerr",
        action="store_true",
        help="Only consider significant errors",
    )

    args = parser.parse_args()
    print(args.sigerr)

    func = find_ulp_neighbors
    # func = find_neighbors

    # Run the chosen lib
    if args.lib == "gsl":
        with open("/pi-detector/data/atom/data_origin.json") as f:
            data = sort_key(json.load(f))
        result = gsl_neighbour(data, args.ulp_expand, args.ulp_step, func, args.sigerr)
    elif args.lib == "hsed":
        with open("/pi-detector/data/hsed/data_origin.json") as f:
            data = sort_key(json.load(f))
        result = hsed_neighbour(data, args.ulp_expand, args.ulp_step, func, args.sigerr)
    elif args.lib == "fpcc":
        with open("/pi-detector/data/fpcc/data_origin.json") as f:
            data = sort_key(json.load(f))
        result = gsl_neighbour(data, args.ulp_expand, args.ulp_step, func, args.sigerr)

    # Save the result to the specified output path
    with open(args.output, "w") as f:
        json.dump(result, f, indent=2)

    print(f"Results have been saved to {args.output}.")
