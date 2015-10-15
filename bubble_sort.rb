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
      break unless perform_one_pass(swapped)
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

  def perform_one_pass(swapped)
    0.upto(list.length - 2) do |i|
      list[i], list[i + 1], swapped = ordered_numbers(list[i], list[i + 1], swapped)
    end
    swapped
  end
end
