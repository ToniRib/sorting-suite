# Public: Sort an array using the insertion sort method. Default sort method
#         returns a new Array while inplace_sort sorts the Array in place.
#         Part of the SortingSuite module.
#
# arr  - The Array to be sorted
#
# Examples
#
#   sorter = SortingSuite::InsertionSort.new
#   sorter.sort([6, 3, 2, 4, 5, 1])
#   # => [1, 2, 3, 4, 5, 6]
#   sorter.inplace_sort(['a', 'd', 'c', 'b'])
#   # => ['a', 'b', 'c', 'd']
#
# Returns the sorted Array.
module SortingSuite
  class InsertionSort
    def sort(arr = [])
      return [] if arr.empty?

      sorted = [arr.shift]

      until arr.empty?
        current_num = arr.shift

        0.upto(sorted.size) do |n|
          if current_num <= sorted[n]
            sorted.insert(n, current_num)
            break
          elsif n == sorted.size - 1
            sorted.push(current_num)
            break
          end
        end
      end

      sorted
    end

    def inplace_sort(arr = [])
      return arr if arr.empty? || arr.length == 1

      1.upto(arr.length - 1) do |i|
        i.times do |j|
          if arr[i] < arr[j]
            arr.insert(j, arr[i])
            arr.delete_at(i + 1)
          end
        end
      end

      arr
    end
  end
end
