# Public: Sort an array using the merge sort method.
#         Part of the SortingSuite module.
#
# arr  - The Array to be sorted
#
# Examples
#
#   sorter = SortingSuite::MergeSort.new
#   sorter.sort([6, 3, 2, 4, 5, 1])
#   # => [1, 2, 3, 4, 5, 6]
#
# Returns the sorted Array.
module SortingSuite
  class MergeSort
    def sort(arr = [])
      return arr if arr.length < 2

      mid = arr.length / 2
      left = arr[0..mid - 1]
      right = arr[mid..-1]

      left = sort(left)
      right = sort(right)

      merge_two_arrays(left, right)
    end

    def merge_two_arrays(arr1, arr2)
      sorted = []

      until arr1.empty? || arr2.empty?
        if arr1[0] <= arr2[0]
          sorted << arr1.shift
        else
          sorted << arr2.shift
        end
      end

      sorted.push(arr1).push(arr2).flatten
    end
  end
end
