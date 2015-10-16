module SortingSuite
  class MergeSort
    attr_reader :list

    def initialize(list = [])
      @list = list
    end

    def merge_sort(arr)
      return arr if arr.length < 2
      mid = arr.length / 2
      left = arr[0..mid-1]
      right = arr[mid..-1]
      merge_sort(left)
      merge_sort(right)
    end
  end
end
