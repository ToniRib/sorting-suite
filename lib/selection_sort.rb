module SortingSuite
  class SelectionSort
    def sort(arr = [])
      return [] if arr.empty?

      sorted = []

      until arr.empty?
        sorted << arr.min
        arr.delete_at(arr.index(arr.min))
      end

      sorted
    end
  end
end
