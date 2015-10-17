module SortingSuite
  class InsertionSort
    def sort(arr)
      return [] if arr.empty?
      sorted_arr = [arr.shift]
      until arr.empty?
        current_num = arr.shift
        0.upto(sorted_arr.size) do |n|
          if current_num <= sorted_arr[n]
            sorted_arr.insert(n, current_num)
            break
          elsif n == sorted_arr.size - 1
            sorted_arr.push(current_num)
            break
          end
        end
      end
      sorted_arr
    end
  end
end
