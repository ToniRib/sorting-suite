require 'minitest'
require_relative 'merge_sort'

class MergeSortTest < Minitest::Test
  def test_class_exists
    assert MergeSort, "Class MergeSort doesn't exist yet!"
  end

  def test_can_initialize_an_instance
    merge_sorter = MergeSort.new
    assert_equal MergeSort, merge_sorter.class
  end

  def test_can_sort_an_empty_array
    merge_sorter = MergeSort.new
    assert_equal [], merge_sorter.sort
  end

  def test_can_split_an_array_of_3_digits_in_half
    merge_sorter = MergeSort.new
    assert_equal [[1, 2], [3]], merge_sorter.split_in_half([1, 2, 3])
  end

  def test_can_split_an_array_of_4_digits_in_half
    merge_sorter = MergeSort.new
    assert_equal [[1, 2], [3, 4]], merge_sorter.split_in_half([1, 2, 3, 4])
  end

  def test_can_split_an_array_of_5_digits_in_half
    merge_sorter = MergeSort.new
    assert_equal [[1, 2], [3, 4], [5]], merge_sorter.split_in_half([1, 2, 3, 4, 5])
  end

  def test_can_split_an_array_of_9_digits_in_half
    merge_sorter = MergeSort.new
    assert_equal [[1, 2], [3, 4], [5, 6], [7, 8], [9]], merge_sorter.split_in_half([1, 2, 3, 4, 5, 6, 7, 8, 9])
  end

  def test_can_sort_a_single_digit_array
    skip
    merge_sorter = MergeSort.new([1])
    assert_equal [1], merge_sorter.sort
  end

  def test_can_accept_an_array_of_numbers
    merge_sorter = MergeSort.new([3, 4, 2, 1])
    assert_equal [3, 4, 2, 1], merge_sorter.array
  end

  def test_can_sort_an_array_of_numbers
    skip
    merge_sorter = MergeSort.new([3, 4, 2, 1])
    assert_equal [1, 2, 3, 4], merge_sorter.sort
  end

  def test_can_sort_a_large_array_of_numbers
    skip
    merge_sorter = MergeSort.new([9, 3, 5, 1, 7, 8, 2, 4, 6])
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9], merge_sorter.sort
  end
end
