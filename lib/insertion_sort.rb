module SortingSuite
  class InsertionSort
    def sort(arr)
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

    def inplace_sort(arr)
      []
    end
  end
end
