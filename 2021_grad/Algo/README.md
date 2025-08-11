# Insertion Sort Algorithm

This directory contains a comprehensive implementation of the Insertion Sort algorithm in Python.

## Files

- `insertion_sort.py` - Complete implementation with multiple variants and test cases

## Features

### Main Functions

1. **`insertion_sort(arr)`** - Standard insertion sort implementation
2. **`insertion_sort_with_steps(arr)`** - Visual step-by-step sorting process

### Utility Functions

- **`test_insertion_sort()`** - Comprehensive test cases

## Usage

### Basic Usage

```python
from insertion_sort import insertion_sort

# Sort an array
arr = [64, 34, 25, 12, 22, 11, 90]
sorted_arr = insertion_sort(arr.copy())
print(sorted_arr)  # [11, 12, 22, 25, 34, 64, 90]
```

### Step-by-Step Visualization

```python
from insertion_sort import insertion_sort_with_steps

arr = [64, 34, 25, 12, 22, 11, 90]
insertion_sort_with_steps(arr.copy())
```

### Run All Tests

```bash
python insertion_sort.py
```

## Algorithm Characteristics

- **Time Complexity**: O(n²) average and worst case, O(n) best case
- **Space Complexity**: O(1) - in-place sorting
- **Stability**: Stable - maintains relative order of equal elements
- **Best For**: Small datasets, nearly sorted arrays, memory-constrained environments

## Test Cases Included

1. Random array
2. Already sorted array
3. Reverse sorted array
4. Single element
5. Empty array
6. Array with duplicates
7. Mixed order array

 