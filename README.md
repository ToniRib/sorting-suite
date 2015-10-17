# Sorting Suite
## Turing Module 1: Project 1 (Echo)

### Overview
Provides a suite of algorithms and tests for three types of sorting:
1. Bubble Sort
2. Insertion Sort
  - includes both an in-place sort and a sort that creates a new array
3. Merge Sort
4. Selection Sort

All classes of sort are contained in the module SortingSuite, which acts as a namespace. New instances can be created by performing the following:

```
SortingSuite::BubbleSort.new
SortingSuite::InsertionSort.new
SortingSuite::MergeSort.new
SortingSuite::SelectionSort.new
```

Each class has a 'sort' method that can take in either an array of numbers or letters and will return back the sorted array. InsertionSort has an additional 'inplace_sort' method that allows the array to be sorted in place without the creation of a new array.

#### Bubble Sort
Iterates through the provided array multiple times, each time comparing two consecutive numbers and swapping the numbers if the number on the right is smaller than the number on the left.

More information: [Wikipedia: Bubble Sort](https://en.wikipedia.org/wiki/Bubble_sort)

#### Insertion Sort
Iterates through the provided array, pulling one element at a time and inserting it into the correct position in a new array, or sorting within the same array if inplace_sort is chosen.

More information: [Wikipedia: Insertion Sort](https://en.wikipedia.org/wiki/Insertion_sort)

#### Merge Sort
A sorting method based on recursion. The provided array is split in half recursively until each piece is only one element. Then, the array is merged back together one piece at a time, ensuring each new (larger) array is sorted properly.

More information: [Wikipedia: Merge Sort](https://en.wikipedia.org/wiki/Merge_sort)

#### Selection Sort
Iterates through the provided array, finding the current minimum in the array and placing it in a new array. The minimum is then removed from the original array.

More information: [Wikipedia: Selection Sort](https://en.wikipedia.org/wiki/Selection_sort)

### Benchmarking

The suite also comes with a benchmarker allows the user to determine which method is fastest or slowest for a particular type of sorting. It also includes a 'time' method to allow for timing a specific sorting type.

Note: at this time, the benchmarker only allows for the sort methods for BubbleSort, InsertionSort, and MergeSort.

#### Examples

```
benchmark = SortingSuite::Benchmark.new
benchmark.fastest([2, 8, 1, 0, 5])
=> "MergeSort is the fastest!"

benchmark.slowest([1, 2, 3, 4, 5])
=> "BubbleSort is the slowest!"

set = (1..100).to_a.shuffle
puts benchmark.time(SortingSuite::InsertionSort, set)
=> InsertionSort took 0.00027 seconds
puts benchmark.time(SortingSuite::MergeSort)
=> MergeSort took 2.0e-06 seconds
```
