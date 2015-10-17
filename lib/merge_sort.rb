module SortingSuite
  class MergeSort
    def sort(arr)
      return arr if arr.length < 2
      mid = arr.length / 2
      left = arr[0..mid - 1]
      right = arr[mid..-1]
      left = sort(left)
      right = sort(right)
      merge_two_arrays(left, right)
    end

    def merge_two_arrays(arr1, arr2)
      return sort_pair(arr1[0], arr2[0]) if single?(arr1) && single?(arr2)
      new_array = []
      i = 0
      j = 0
      loop do
        n1 = arr1[i]
        n2 = arr2[j]
        if n1 <= n2
          new_array << n1
          i += 1
        else
          new_array << n2
          j += 1
        end
        break if i == arr1.length || j == arr2.length
      end
      i == arr1.length ? new_array << arr2[j..-1] : new_array << arr1[i..-1]
      new_array.flatten
    end

    def single?(arr)
      arr.length == 1
    end

    def sort_pair(num1, num2)
      num1 <= num2 ? [num1, num2] : [num2, num1]
    end
  end
end
