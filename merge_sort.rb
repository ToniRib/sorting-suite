# TODO: implement namespace

require 'pry'

class MergeSort
  attr_reader :array

  def initialize(array = [])
    @array = array
  end

  def sort
    sorted_array = []
    sliced_array = slice_array_into_pairs
    sorted_array = merge(sliced_array)
  end

  def slice_array_into_pairs
    if array.length > 2
      sliced_array = array.each_slice(2).to_a
    else
      sliced_array = array
    end
  end

  def merge(array)
    array.each do |pair|
      first_num = pair[0]
      second_num = pair[1]
      if first_num > second_num
        pair[0] = second_num
        pair[1] = first_num
      end
    end
  end
end
