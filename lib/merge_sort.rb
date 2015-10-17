require 'pry'

module SortingSuite
  class MergeSort

    def merge_sort(arr)
      # binding.pry
      return arr if arr.length < 2
      mid = arr.length / 2
      left = arr[0..mid-1]
      right = arr[mid..-1]
      left = merge_sort(left)
      right = merge_sort(right)
      merge_two_arrays(left, right)
    end

    def merge_two_arrays(arr1, arr2)
      num_times = arr1.length + arr2.length - 1
      num1 = arr1.shift
      num2 = arr2.shift
      new_array = []
      num_times.times do |i|
        new_array << return_smallest_number(num1, num2)
        # get the next number
        if num1 <= num2
          if !arr1.empty?
            num1 = arr1.shift
          elsif !arr2.empty?
            num1 = arr2.shift
          else
            new_array << num2
          end
        else
          if !arr2.empty?
            num2 = arr2.shift
          elsif !arr1.empty?
            num2 = arr1.shift
          else
            new_array << num1
          end
        end
      end
      new_array
    end

    def return_smallest_number(num1, num2)
      return num1 < num2 ? num1 : num2
    end
  end
end
