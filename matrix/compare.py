import numpy as np
import os
from rich.progress import Progress
from rich.console import Console
from rich.table import Table
from scipy.stats import pearsonr, spearmanr
from matplotlib import pyplot as plt

console = Console()

# Function to load a binary file
def load_vector(file_path, dim):
    return np.fromfile(file_path, dtype=np.float64, count=dim)

# Load vectors from a folder with progress bar
def load_vectors_from_folder(folder_path, num_matrices, size):
    vectors = []
    with Progress() as progress:
        task = progress.add_task(
            f"Loading vectors from {folder_path}...", total=num_matrices
        )
        for i in range(num_matrices):
            file_path = os.path.join(folder_path, f'X_{i}.bin')
            vectors.append(load_vector(file_path, size))
            progress.update(task, advance=1)
    return np.array(vectors)

# ULP Error calculation optimized using NumPy
def ulp_err(vec1, vec2):
    diff = np.abs(vec1 - vec2)
    # ulps = diff / (np.nextafter(vec1, np.inf) - vec1)
    ulps = diff / vec1
    return np.max(ulps)

# Main function to compute differences
def compare_folders(folder1, folder2, num_matrices, size):
    vectors1 = load_vectors_from_folder(folder1, num_matrices, size)
    vectors2 = load_vectors_from_folder(folder2, num_matrices, size)

    if vectors1.shape != vectors2.shape:
        raise ValueError("Folders contain vectors of different sizes!")

    differences = []
    with Progress() as progress:
        task = progress.add_task(
            f"Comparing vectors using ULP Error...", total=len(vectors1)
        )
        for i in range(len(vectors1)):
            diff = ulp_err(vectors1[i], vectors2[i])
            differences.append(diff)
            progress.update(task, advance=1)

    display_summary(differences)
    return differences

# Function to display summary using rich Table
def display_summary(differences):
    table = Table(title="Summary of ULP Error Differences")
    table.add_column("Metric", justify="center", style="cyan", no_wrap=True)
    table.add_column("Value", justify="center", style="magenta")

    min_diff = np.min(differences)
    max_diff = np.max(differences)
    avg_diff = np.mean(differences)

    table.add_row("Min Difference", f"{min_diff:.4f}")
    table.add_row("Max Difference", f"{max_diff:.4f}")
    table.add_row("Average Difference", f"{avg_diff:.4f}")

    console.print(table)

# Function to calculate Pearson and Spearman correlations
def calculate_correlations(diff1, diff2):
    pearson_corr, _ = pearsonr(diff1, diff2)
    spearman_corr, _ = spearmanr(diff1, diff2)
    console.print(
        f"[bold yellow]Pearson correlation: {pearson_corr:.6f}[/bold yellow]"
    )
    console.print(
        f"[bold yellow]Spearman correlation: {spearman_corr:.6f}[/bold yellow]"
    )

# Function to plot differences using matplotlib
def plot_differences(diff1, diff2, cond, save_path):
    plt.figure(dpi=200, figsize=(16, 6))
    X = np.arange(len(diff1))
    plt.plot(X, diff1, label="ULP Error (PI-detector)", linestyle="-")
    plt.plot(X, diff2, label="ULP Error (High-precision approach)", color="red", linewidth=1)
    # plt.plot(X, cond, label="Matrix condition number")
    plt.yscale("log")
    plt.xlabel("Index", fontsize=22)
    # plt.ylabel("ULP Error / Condition Number", fontsize=18)
    plt.tick_params(axis="both", which="major", labelsize=22)
    plt.grid(True)
    plt.legend(fontsize=22)
    plt.tight_layout()
    plt.savefig(save_path)
    plt.savefig(f"{save_path}.pdf", dpi=600, bbox_inches = 'tight')

# Example usage
if __name__ == "__main__":
    base_dir = 'data_3000_1000'
    folder_gsl = f'{base_dir}/matrix/X_gsl'
    folder_gsl_i = f'{base_dir}/matrix/X_gsl_i'
    folder_mplapack = f'{base_dir}/matrix/X_mplapack'
    size = 3000       # Dimension of the vectors
    num_matrices = 1000  # Number of matrices/vectors to process

    # Compare X_gsl with X_gsl_i using ULP Error
    console.print(
        "[bold green]Comparing X_gsl with X_gsl_i using ULP Error...[/bold green]"
    )
    diff_gsl_gsl_i = compare_folders(folder_gsl, folder_gsl_i, num_matrices, size)

    # Compare X_gsl with X_mplapack using ULP Error
    console.print(
        "[bold green]Comparing X_gsl with X_mplapack using ULP Error...[/bold green]"
    )
    diff_gsl_mplapack = compare_folders(folder_gsl, folder_mplapack, num_matrices, size)

    # Load condition numbers
    with open(f"{base_dir}/condition_numbers.txt", "r") as f:
        cond = [float(c) for c in f.read().split() if c][:num_matrices]

    # with open(f"{base_dir}/condition_numbers.json", "r") as f:
    #     cond = [float(c) for c in json.load(f)]

    # Sort arrays based on condition numbers
    combined_array = np.array([diff_gsl_gsl_i, diff_gsl_mplapack, cond]).T
    combined_array = combined_array[combined_array[:, 1].argsort()]
    diff_gsl_gsl_i = combined_array[:, 0]
    diff_gsl_mplapack = combined_array[:, 1]
    cond = combined_array[:, 2]

    # Calculate correlations
    calculate_correlations(diff_gsl_gsl_i, diff_gsl_mplapack)

    # Plot the differences
    plot_differences(diff_gsl_gsl_i, diff_gsl_mplapack, cond, f"{base_dir}/correlation.png")



    combined_array = np.array([diff_gsl_gsl_i, diff_gsl_mplapack, cond]).T
    combined_array = combined_array[combined_array[:, 0].argsort()][::-1]
    diff_gsl_gsl_i = combined_array[:, 0]
    diff_gsl_mplapack = combined_array[:, 1]
    cond = combined_array[:, 2]
    combined_array = np.array([np.arange(1, num_matrices + 1), diff_gsl_gsl_i, diff_gsl_mplapack, cond]).T
    combined_array = combined_array[combined_array[:, 2].argsort()][::-1][:10]
    
    # Assuming combined_array is already sorted and contains the data
    print("{:2s}   {:<12s}   {:<12s}   {:<12s}".format("Rank", "DELA", "High Precision", "Condition Number"))
    for row in combined_array:
        print(f"{int(row[0]):2d}   {row[1]:.6e}   {row[2]:.6e}  {row[3]:.6e}")
