import argparse
import json
import numpy as np

def fitness2relerr(fitness, x):
    ulp_x = np.nextafter(x, np.inf) - x
    return abs(fitness * ulp_x / x)

def main():
    parser = argparse.ArgumentParser(
        description="Compute TP/TN/FP/FN from a simulator output JSON"
    )
    parser.add_argument(
        "input_file",
        help="Path to the JSON file produced by the simulator"
    )
    args = parser.parse_args()

    # Load data from the given file
    with open(args.input_file) as f:
        data = json.load(f)

    sort_key = lambda d: dict(sorted({int(k): v for k, v in d.items()}.items()))

    # Threshold for determining "True"
    ERROR_THRESHOLD = 1e-3

    # Initialize dictionaries to store TP, TN, FP, and FN for each function
    results = {}

    for func_idx, func_info in sort_key(data).items():
        # Extract error lists and their standard deviations
        xs_list = func_info["inputs"]
        errors_list = func_info["errors"]
        errors_std_list = func_info["errors_std"]

        # Initialize counters
        TP = TN = FP = FN = 0

        for i in range(len(errors_list)):
            xs = xs_list[i]
            errors = errors_list[i]
            errors_std = errors_std_list[i]

            for x, error, error_std in zip(xs, errors, errors_std):
                if error >= ERROR_THRESHOLD:
                    if error_std >= ERROR_THRESHOLD:
                        TP += 1
                    else:
                        FP += 1
                else:
                    if error_std >= ERROR_THRESHOLD:
                        FN += 1
                    else:
                        TN += 1

        # Store results for this function
        results[func_idx] = {
            "TP": TP,
            "TN": TN,
            "FP": FP,
            "FN": FN,
        }

    # Print per-function and overall sums
    for func_idx, metrics in results.items():
        print(
            f"{func_idx:3d} | {metrics['TP']:3d} | {metrics['TN']:3d} | "
            f"{metrics['FP']:3d} | {metrics['FN']:3d}"
        )

    total = {
        k: sum(metrics[k] for metrics in results.values())
        for k in ("TP", "TN", "FP", "FN")
    }
    print(
        f"SUM | {total['TP']:3d} | {total['TN']:3d} | "
        f"{total['FP']:3d} | {total['FN']:3d}"
    )

if __name__ == "__main__":
    main()
