# TODO: implement namespace

class BubbleSort
  attr_reader :list

  def initialize(list = [])
    @list = list
  end

  def sort
    loop do
      swapped = false
      0.upto(list.length - 2) do |i|
        if list[i + 1] < list[i]
          list[i], list[i + 1] = list[i + 1], list[i]
          swapped = true
        end
      end
      break unless swapped
    end
    list
  end
end
