import json
import numpy as np

with open("/pi-detector/data/atom/out_sp_full.json") as f:
    data = json.load(f)


def fitness2relerr(fitness, x):
    ulp_x = np.nextafter(x, np.inf) - x
    return abs(fitness * ulp_x / x)


sort_key = lambda d: dict(sorted({int(k): v for k, v in d.items()}.items()))

# Threshold for determining "True"
ERROR_THRESHOLD = 1e-3

# Initialize dictionaries to store TP, TN, FP, and FN for each function
results = {}
special_cases = []

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
            error = fitness2relerr(error, x)
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

for func_idx, metrics in results.items():
    print(
        f"{func_idx:3d} | {metrics['TP']:3d} | {metrics['TN']:3d} | {metrics['FP']:3d} | {metrics['FN']:3d}"
    )

print(
    f"SUM | {sum(metrics['TP'] for metrics in results.values()):3d} | {sum(metrics['TN'] for metrics in results.values()):3d} | {sum(metrics['FP'] for metrics in results.values()):3d} | {sum(metrics['FN'] for metrics in results.values()):3d}"
)
