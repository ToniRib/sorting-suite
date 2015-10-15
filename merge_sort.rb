# TODO: implement namespace

class MergeSort
  attr_reader :array

  def initialize(array = [])
    @array = array
  end

  def sort
    # use each_slice to split the array! see the enumerator class
    sorted_array = []
    sliced_array = slice_array
  end

  def slice_array
    if array.length > 2
      sliced_array = array.each_slice(2).to_a
    else
      slicd_array = array
    end
  end
end
