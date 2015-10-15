require 'pry'

class BubbleSort
  attr_reader :array

  def initialize(array = [])
    @array = array
  end

  def sort
    loop do
      swapped = false
      0.upto(array.length - 2) do |i|
        prev_num = array[i]
        current_num = array[i + 1]
        if current_num < prev_num
          array[i] = current_num
          array[i + 1] = prev_num
          swapped = true
        else
        end
      end
      break if !swapped
    end
    array
  end
end
