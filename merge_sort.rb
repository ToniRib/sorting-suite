# TODO: implement namespace
# TODO: figure out recursion...

require 'pry'

class MergeSort
  attr_reader :list

  def initialize(list = [])
    @list = list
  end

  def sort
    sorted_list = []
    sliced_list = slice_array_into_pairs
    if list.length > 1
      sorted_list = merge(sliced_list)
    else
      sorted_list = sliced_list
    end
    sorted_list
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
      # binding.pry
      if second_num == nil
        break
      elsif  first_num > second_num
        pair[0], pair[1] = pair[1], pair[0]
      end
    end
    while list[-2] != nil
      # binding.pry
      new_array = merge_two_arrays(list[-2], list[-1])
      list.pop
      list.pop
      list.push(new_array)
    end
    list.flatten
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
