module SortingSuite
  class SelectionSort
    def sort(arr = [])
      return [] if arr.empty?

      sorted = []

      until arr.empty?
        sorted << find_min(arr)
        arr.delete_at(arr.index(arr.min))
      end

      sorted
    end

    def find_min(arr)
      minimum = arr[0]
      arr.length.times do |i|
        minimum = arr[i] if arr[i] < minimum
      end
      minimum
    end
  end
end
