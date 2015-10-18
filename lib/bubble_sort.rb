# Public: Sort an array using the bubble sort method.
#         Part of the SortingSuite module.
#
# arr  - The Array to be sorted
#
# Examples
#
#   sorter = SortingSuite::BubbleSort.new
#   sorter.sort([6, 3, 2, 4, 5, 1])
#   # => [1, 2, 3, 4, 5, 6]
#
# Returns the sorted Array.
module SortingSuite
  class BubbleSort
    def sort(arr = [])
      loop do
        swapped = false

        0.upto(arr.length - 2) do |i|
          if arr[i + 1] < arr[i]
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
            swapped = true
          end
        end

        break unless swapped
      end

      arr
    end
  end
end
