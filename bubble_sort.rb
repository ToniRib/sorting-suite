# TODO: implement namespace

require 'pry'

class BubbleSort
  attr_reader :list

  def initialize(list = [])
    @list = list
  end

  def sort
    loop do
      swapped = false
      0.upto(list.length - 2) do |i|
        list[i], list[i + 1], swapped = ordered_numbers(list[i], list[i + 1], swapped)
      end
      break unless swapped
    end
    list
  end

  def ordered_numbers(x, y, swapped)
    if x <= y
      [x,y, swapped]
    else
      [y,x,true]
    end
  end

end
