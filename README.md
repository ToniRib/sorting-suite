# Sorting Suite
## Turing Module 1: Project 1 (Echo)

### Overview
Provides a suite of algorithms and tests for three types of sorting:
1. Bubble Sort
2. Insertion Sort
3. Merge Sort

All classes of sort are contained in the module SortingSuite, which acts as a namespace. New instances can be created by performing the following:

```
SortingSuite::BubbleSort.new
SortingSuite::InsertionSort.new
SortingSuite::MergeSort.new
```

Each class has a 'sort' method that can take in either an array of numbers or letters and will return back the sorted array.

### Bubble Sort
Iterates through the provided array multiple times, each time comparing two consecutive numbers and swapping the numbers if the number on the right is smaller than the number on the left.

More information: [Wikipedia: Bubble Sort](https://en.wikipedia.org/wiki/Bubble_sort)

### Insertion Sort
Iterates through the provided array, pulling one element at a time and inserting it into the correct position in a new array.

More information: [Wikipedia: Insertion Sort](https://en.wikipedia.org/wiki/Insertion_sort)

### Merge Sort
A sorting method based on recursion. The provided array is split in half recursively until each piece is only one element. Then, the array is merged back together one piece at a time, ensuring each new (larger) array is sorted properly.

More information: [Wikipedia: Merge Sort](https://en.wikipedia.org/wiki/Merge_sort)
