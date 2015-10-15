# TODO: implement namespace

class BubbleSort
  attr_reader :array

  def initialize(array = [])
    @array = array
  end

  def sort
    loop do
      swapped = false
      0.upto(array.length - 2) do |i|
        current_num = array[i]
        next_num = array[i + 1]
        if next_num < current_num
          array[i] = next_num
          array[i + 1] = current_num
          swapped = true
        end
      end
      break unless swapped
    end
    array
  end
end
