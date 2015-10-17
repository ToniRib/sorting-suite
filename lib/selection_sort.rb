module SortingSuite
  class SelectionSort
    def sort(arr = [])
      return [] if arr.empty?
      sorted_array = []
      until arr.empty?
        sorted_array << arr.min
        arr.delete_at(arr.index(arr.min))
      end
      sorted_array
    end
  end
end
