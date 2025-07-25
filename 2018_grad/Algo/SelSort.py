# Selection Sort with Detailed Swap Tracing

def selection_sort_verbose(arr):
    """
    Selection sort with verbose output showing each swap step.
    """
    a = arr.copy()
    n = len(a)
    print("Initial array:", a)
    for i in range(n - 1):
        min_idx = i
        # Find the minimum in the unsorted tail
        for j in range(i + 1, n):
            if a[j] < a[min_idx]:
                min_idx = j
        # Swap if a smaller element was found
        if min_idx != i:
            print(f"Swapping index {i} (value {a[i]}) with index {min_idx} (value {a[min_idx]})")
            a[i], a[min_idx] = a[min_idx], a[i]
            print(" Array now:", a)
        else:
            print(f"No swap needed for index {i} (value {a[i]})")
    print("Final sorted array:", a)
    return a

# Example usage
if __name__ == "__main__":
    sample = [3, 6, 2, 51, 13, 25]
    selection_sort_verbose(sample)

