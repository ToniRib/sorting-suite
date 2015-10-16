# TODO: implement namespace

require 'pry'

class MergeSort
  attr_reader :list

  def initialize(list = [])
    @list = list
  end

  def sort
    sorted_list = []
    sliced_list = slice_array_into_pairs
    sorted_list = merge(sliced_list)
  end

  def slice_array_into_pairs
    if list.length > 2
      sliced_list = list.each_slice(2).to_a
    else
      sliced_list = list
    end
  end

  def merge(list)
    list.each do |pair|
      first_num = pair[0]
      second_num = pair[1]
      if first_num > second_num
        # binding.pry
        pair[0], pair[1] = pair[1], pair[0]
      end
    end
    list
  end
end
