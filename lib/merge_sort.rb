require 'pry'

module SortingSuite
  class MergeSort
    attr_reader :list

    def initialize(list = [])
      @list = list
    end

    def merge_sort(arr)
      # binding.pry
      return arr if arr.length < 2
      mid = arr.length / 2
      left = arr[0..mid-1]
      right = arr[mid..-1]
      num1 = merge_sort(left)
      num2 = merge_sort(right)
      puts "num1 is: #{num1}"
      puts "num2 is: #{num2}"
      p merge_two_arrays(num1, num2)
    end

    def merge_two_arrays(arr1, arr2)
      num_times = arr1.length + arr2.length - 1
      num1 = arr1.shift
      num2 = arr2.shift
      new_array = []
      num_times.times do |i|
        if num1 <= num2
          new_array << num1
          if !arr1.empty?
            num1 = arr1.shift
          elsif !arr2.empty?
            num1 = arr2.shift
          else
            new_array << num2
          end
        else
          new_array << num2
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
  end
end
