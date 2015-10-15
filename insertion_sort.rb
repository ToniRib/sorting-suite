require 'pry'

class InsertionSort
  attr_reader :array

  def initialize(array = [])
    @array = array
  end

  def sort
    sorted_array = Array.new(array.length)
    loop do
      current_num = array.shift
      0.upto(sorted_array.length - 1) do |n|
        sorted_num = sorted_array[n]
        if sorted_num == nil
          sorted_array[n] = current_num
          break
        elsif current_num < sorted_num
          sorted_array.insert(n, current_num)
          sorted_array.pop
          break
        end
      end
      break if array.empty?
    end
    sorted_array
  end
end
