require 'minitest'
require_relative 'merge_sort'

class MergeSortTest < Minitest::Test
  def test_class_exists
    assert MergeSort, "Class MergeSort doesn't exist yet!"
  end

  def test_can_initialize_an_instance
    merge = MergeSort.new
    assert_equal MergeSort, merge.class
  end

  def test_can_accept_an_array_of_numbers
    merge = MergeSort.new([3, 4, 2, 1])
    assert_equal [3, 4, 2, 1], merge.array
  end

  def test_can_sort_an_array_of_numbers
    merge = MergeSort.new([3, 4, 2, 1])
    assert_equal [1, 2, 3, 4], merge.sort
  end

  def test_can_sort_a_large_array_of_numbers
    merge = MergeSort.new([9, 3, 5, 1, 7, 8, 2, 4, 6])
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9], merge.sort
  end
end