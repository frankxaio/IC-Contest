"""
Insertion Sort Algorithm Implementation

Time Complexity:
- Best Case: O(n) - when array is already sorted
- Average Case: O(n²) - quadratic time complexity
- Worst Case: O(n²) - when array is reverse sorted

Space Complexity: O(1) - in-place sorting algorithm

Stability: Stable - maintains relative order of equal elements

Best Use Cases:
- Small datasets (n < 50)
- Nearly sorted arrays
- Online sorting (sorting data as it arrives)
- When memory is limited
"""

def insertion_sort(arr):
    """
    Sorts an array using the insertion sort algorithm.
    
    Args:
        arr (list): The array to be sorted
        
    Returns:
        list: The sorted array (in-place modification)
    """
    # Iterate through the array starting from the second element
    for i in range(1, len(arr)):
        # Store the current element to be inserted
        current = arr[i]
        
        # Find the correct position for current element
        # by comparing it with elements in the sorted portion
        j = i - 1
        
        # Move elements greater than current one position ahead
        while j >= 0 and arr[j] > current:
            arr[j + 1] = arr[j]
            j -= 1
        
        # Place current element in its correct position
        arr[j + 1] = current
    
    return arr


def insertion_sort_with_steps(arr):
    """
    Insertion sort with step-by-step visualization.
    
    Args:
        arr (list): The array to be sorted
        
    Returns:
        list: The sorted array
    """
    print(f"Original array: {arr}")
    
    for i in range(1, len(arr)):
        current = arr[i]
        j = i - 1
        
        print(f"\nStep {i}: Inserting {current}")
        print(f"Array before insertion: {arr[:i]} | {arr[i:]}")
        
        while j >= 0 and arr[j] > current:
            arr[j + 1] = arr[j]
            j -= 1
        
        arr[j + 1] = current
        print(f"Array after insertion:  {arr[:i+1]} | {arr[i+1:]}")
    
    print(f"\nFinal sorted array: {arr}")
    return arr



def test_insertion_sort():
    """Test function to demonstrate insertion sort with various test cases."""
    
    test_cases = [
        [64, 34, 25, 12, 22, 11, 90],
        [1, 2, 3, 4, 5],  # Already sorted
        [5, 4, 3, 2, 1],  # Reverse sorted
        [1],  # Single element
        [],   # Empty array
        [3, 3, 3, 3],  # Duplicate elements
        [1, 5, 2, 8, 3, 9, 7, 4, 6]  # Random order
    ]
    
    print("=== Insertion Sort Test Cases ===\n")
    
    for i, test_arr in enumerate(test_cases, 1):
        print(f"Test Case {i}:")
        print(f"Input:  {test_arr}")
        
        # Create a copy for sorting
        arr_copy = test_arr.copy()
        sorted_arr = insertion_sort(arr_copy)
        
        print(f"Output: {sorted_arr}")
        print(f"Sorted: {sorted_arr == sorted(test_arr)}")
        print("-" * 50)



if __name__ == "__main__":
    # Run basic tests
    test_insertion_sort()
    
    # Demonstrate step-by-step sorting
    print("\n=== Step-by-Step Example ===")
    example = [64, 34, 25, 12, 22, 11, 90]
    insertion_sort_with_steps(example.copy()) 