# TODO: implement namespace

class InsertionSort
  attr_reader :list

  def initialize(list = [])
    @list = list
  end

  def sort
    list_size = list.size
    sorted_list = []
    loop do
      current_num = list.shift
      0.upto(list_size - 1) do |n|
        sorted_num = sorted_list[n]
        if sorted_num == nil
          sorted_list[n] = current_num
          break
        elsif current_num < sorted_num
          sorted_list.insert(n, current_num)
          break
        end
      end
      break if list.empty?
    end
    sorted_list
  end
end
