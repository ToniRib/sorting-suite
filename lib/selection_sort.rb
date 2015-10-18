# Public: Sort an array using the selection sort method.
#         Part of the SortingSuite module.
#
# arr  - The Array to be sorted
#
# Examples
#
#   sorter = SortingSuite::SelectionSort.new
#   sorter.sort([6, 3, 2, 4, 5, 1])
#   # => [1, 2, 3, 4, 5, 6]
#
# Returns the sorted Array.
module SortingSuite
  class SelectionSort
    def sort(arr = [])
      return [] if arr.empty?

      sorted = []

      until arr.empty?
        sorted << find_min(arr)
        arr.delete_at(arr.index(arr.min))
      end

      sorted
    end

    def find_min(arr)
      minimum = arr[0]

      arr.length.times do |i|
        minimum = arr[i] if arr[i] < minimum
      end

      minimum
    end
  end
end
