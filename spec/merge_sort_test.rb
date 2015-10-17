require 'minitest'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test
  def test_class_exists
    assert SortingSuite::MergeSort, "Class MergeSort doesn't exist yet!"
  end

  def test_can_initialize_an_instance
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal SortingSuite::MergeSort, merge_sorter.class
  end

  def test_can_return_the_smallest_number
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal 2, merge_sorter.return_smallest_number(4, 2)
  end

  def test_can_sort_an_empty_array
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [], merge_sorter.merge_sort([])
  end

  def test_can_sort_a_single_digit_array
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1], merge_sorter.merge_sort([1])
  end

  def test_can_sort_an_array_of_two_numbers
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2], merge_sorter.merge_sort([2, 1])
  end

  def test_can_sort_an_array_of_three_numbers
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2, 3], merge_sorter.merge_sort([3, 2, 1])
  end

  def test_can_sort_an_array_of_four_numbers
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2, 3, 4], merge_sorter.merge_sort([3, 4, 2, 1])
  end

  def test_can_sort_an_array_of_eight_numbers
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2, 3, 4, 5, 7, 8, 9], merge_sorter.merge_sort([9, 3, 5, 1, 7, 8, 2, 4])
  end

  def test_can_sort_an_array_of_nine_numbers
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9], merge_sorter.merge_sort([8, 1, 4, 3, 9, 7, 2, 6, 5])
  end
end
