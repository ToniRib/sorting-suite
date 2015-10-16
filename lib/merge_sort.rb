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
      p merge_together(num1[0], num2[0])
    end

    def merge_together(num1, num2)
      if num1 < num2
        [num1, num2]
      else
        [num2, num1]
      end
    end
  end
end
