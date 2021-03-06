# Sorting Suite
## Turing Module 1: Project 1 (Echo)

### Overview
Provides a suite of algorithms and tests for four types of sorting:

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

##### Example

```
bubble_sorter = SortingSuite::BubbleSort.new
bubble_sorter.sort([5, 3, 4, 2, 1])
=> [1, 2, 3, 4, 5]
```

#### Insertion Sort
Iterates through the provided array, pulling one element at a time and inserting it into the correct position in a new array, or sorting within the same array if inplace_sort is chosen.

More information: [Wikipedia: Insertion Sort](https://en.wikipedia.org/wiki/Insertion_sort)

##### Examples

```
insertion_sorter = SortingSuite::InsertionSort.new
insertion_sorter.sort([5, 3, 4, 2, 1])
=> [1, 2, 3, 4, 5]

insertion_sorter.inplace_sort(%w(d b c a b))
=> [a, b, c, d, e]

arr = [3, 5, 4, 2, 1]
SortingSuite::InsertionSort.new(arr).sort.object_id == arr.object_id
=> true
```

#### Merge Sort
A sorting method based on recursion. The provided array is split in half recursively until each piece is only one element. Then, the array is merged back together one piece at a time, ensuring each new (larger) array is sorted properly.

More information: [Wikipedia: Merge Sort](https://en.wikipedia.org/wiki/Merge_sort)

##### Example

```
merge_sorter = SortingSuite::MergeSort.new
merge_sorter.sort([5, 3, 4, 2, 1])
=> [1, 2, 3, 4, 5]
```

#### Selection Sort
Iterates through the provided array, finding the current minimum in the array and placing it in a new array. The minimum is then removed from the original array.

More information: [Wikipedia: Selection Sort](https://en.wikipedia.org/wiki/Selection_sort)

##### Example

```
selection_sorter = SortingSuite::SelectionSort.new
selection_sorter.sort([5, 3, 4, 2, 1])
=> [1, 2, 3, 4, 5]
```

### Benchmarking

The suite also comes with a benchmarker allows the user to determine which method is fastest or slowest for a particular type of sorting. It also includes a 'time' method to allow for timing a specific sorting type.

At this time, the benchmarker only allows for the sort methods for BubbleSort, InsertionSort, MergeSort, and SelectionSort. It does not include timing or comparison for the in-place insertion sort.

Note: Depending on the array, because some of the methods take very close to the same amount of time to run, the benchmarker may return different methods for fastest & slowest for each run.

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

### Test Suite

Each sort type has a corresponding testing file written with [minitest](https://github.com/seattlerb/minitest) which can be run from the terminal using mrspec:

```
$ mrspec spec/bubble_sort.rb
BubbleSort
  can sort an array of four numbers
  can sort a single digit array
  can sort an array of letters
  can sort a reverse array
  class exists
  can initialize an instance
  can sort a presorted array
  can sort an array with duplicate numbers
  can sort an empty array

Failures:

Finished in 0.00176 seconds (files took 0.08604 seconds to load)
9 examples, 0 failures
```

You can also run all the tests at the same time by running the `mrspec` command from the terminal in the project's base directory.

#### Dependencies

Must have the [mrspec gem](https://github.com/JoshCheek/mrspec) and [minitest gem](https://github.com/seattlerb/minitest) installed.

Alternatively, you could run the tests without using mrspec if you modify the first line of each test to be `require 'minitest/autorun'`.
