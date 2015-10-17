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

  def test_can_detect_an_array_of_one_number
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal true, merge_sorter.single?([2])
  end

  def test_can_sort_a_pair_of_numbers
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2], merge_sorter.sort_pair(2, 1)
  end

  def test_can_merge_two_arrays
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2, 3, 4, 5, 6], merge_sorter.merge_two_arrays([2, 4], [1, 3, 5, 6])
  end

  def test_can_sort_an_empty_array
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [], merge_sorter.sort([])
  end

  def test_can_sort_a_single_digit_array
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1], merge_sorter.sort([1])
  end

  def test_can_sort_an_array_of_two_numbers
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2], merge_sorter.sort([2, 1])
  end

  def test_can_sort_an_array_of_three_numbers
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2, 3], merge_sorter.sort([3, 2, 1])
  end

  def test_can_sort_an_array_of_four_numbers
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2, 3, 4], merge_sorter.sort([3, 4, 2, 1])
  end

  def test_can_sort_an_array_of_eight_numbers
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2, 3, 4, 5, 7, 8, 9], merge_sorter.sort([9, 3, 5, 1, 7, 8, 2, 4])
  end

  def test_can_sort_an_array_of_nine_numbers
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9], merge_sorter.sort([8, 1, 4, 3, 9, 7, 2, 6, 5])
  end

  def test_can_sort_an_array_of_letters
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal ['a', 'b', 'c', 'd'], merge_sorter.sort(['d', 'b', 'a', 'c'])
  end
end
