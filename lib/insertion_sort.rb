module SortingSuite
  class InsertionSort
    attr_reader :list

    def initialize(list = [])
      @list = list
    end

    def sort
      list.empty? ? sorted_list = [] : sorted_list = [list.shift]
      until list.empty? do
        current_num = list.shift
        0.upto(sorted_list.size) do |n|
          if current_num <= sorted_list[n]
            sorted_list.insert(n, current_num)
            break
          elsif n == sorted_list.size - 1
            sorted_list.push(current_num)
            break
          end
        end
      end
      sorted_list
    end
  end
end
