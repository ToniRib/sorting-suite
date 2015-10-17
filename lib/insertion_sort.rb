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
