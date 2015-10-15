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
        if array[i + 1] < array[i]
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end
      break unless swapped
    end
    array
  end
end
