require 'pry'

class BubbleSort
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sort
    j = array.length - 1
    while j > 0
      for i in 0..(array.length-2)
        prev_num = array[i]
        current_num = array[i+1]
        if current_num < prev_num
          array[i] = current_num
          array[i+1] = prev_num
        end
      end
      j -= 1
    end
    array
  end
end
