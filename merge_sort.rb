class MergeSort
  attr_reader :array

  def initialize(array = [])
    @array = array
  end

  def sort
    # use each_slice to split the array! see the enumerator class
    sorted_array = []
    
  end

  def split_in_half(arr)
    if arr.length == 3
      arr.each_slice(2).to_a
    else
      arr.each_slice(arr.length / 2).to_a
    end
  end
end
