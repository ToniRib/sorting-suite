module SortingSuite
  class BubbleSort
    def sort(arr)
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
