
def rank_sort(arr):
    """
    Rank-based sorting function with internal state debug printing.
    """
    n = len(arr)
    rank = [0] * n
    result = [0] * n

    print("Initial array:", arr)
    print("Initial rank:", rank)

    # Step 1: compute rank scores
    for i in range(n):
        for j in range(n):
            if arr[i] > arr[j]:
                rank[i] += 1
            elif arr[i] == arr[j] and i < j:
                rank[i] += 1

    print("Final rank:", rank)

    # Step 2: use rank to place elements
    for i in range(n):
        result[rank[i]] = arr[i]
        print("Result[%d] = %d" % (rank[i], arr[i]))

    print("Sorted result:", result)
    return result


if __name__ == "__main__":
    data = [31, 29, 27, 25, 23, 21, 19, 17, 15, 13, 11, 9, 7, 5, 3, 1,
            2, 2, 4, 4, 4, 4, 8, 16, 8, 16, 32, 32, 0, 10, 20, 30]
    rank_sort(data)

