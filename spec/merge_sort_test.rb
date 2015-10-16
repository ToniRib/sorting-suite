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

  def test_can_accept_an_array_of_numbers
    merge_sorter = SortingSuite::MergeSort.new([3, 4, 2, 1])
    assert_equal [3, 4, 2, 1], merge_sorter.list
  end

  def test_can_sort_an_empty_array
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [], merge_sorter.sort
  end

  def test_will_not_slice_an_array_of_2_digits
    merge_sorter = SortingSuite::MergeSort.new([1, 2])
    assert_equal [1, 2], merge_sorter.slice_array_into_pairs
  end

  def test_can_slice_an_array_of_3_digits
    merge_sorter = SortingSuite::MergeSort.new([1, 2, 3])
    assert_equal [[1, 2], [3]], merge_sorter.slice_array_into_pairs
  end

  def test_can_slice_an_array_of_4_digits
    merge_sorter = SortingSuite::MergeSort.new([1, 2, 3, 4])
    assert_equal [[1, 2], [3, 4]], merge_sorter.slice_array_into_pairs
  end

  def test_can_slice_an_array_of_5_digits
    merge_sorter = SortingSuite::MergeSort.new([1, 2, 3, 4, 5])
    assert_equal [[1, 2], [3, 4], [5]], merge_sorter.slice_array_into_pairs
  end

  def test_can_slice_an_array_of_9_digits
    merge_sorter = SortingSuite::MergeSort.new([1, 2, 3, 4, 5, 6, 7, 8, 9])
    assert_equal [[1, 2], [3, 4], [5, 6], [7, 8], [9]], merge_sorter.slice_array_into_pairs
  end

  def test_can_sort_pairs_in_an_array
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [[3,5], [2, 6], [3, 9], [1,2], [4, 6], [6, 8]], merge_sorter.sort_each_pair(([[5, 3], [2, 6], [9, 3], [1, 2], [6, 4], [6, 8]]))
  end

  def test_can_merge_two_1_by_2_arrays
    merge_sorter = SortingSuite::MergeSort.new
    assert_equal [1, 2, 3, 4], merge_sorter.merge_two_arrays([1, 2], [3, 4])
  end

  def test_can_sort_a_single_digit_array
    merge_sorter = SortingSuite::MergeSort.new([1])
    assert_equal [1], merge_sorter.sort
  end

  def test_can_sort_an_array_of_numbers
    merge_sorter = SortingSuite::MergeSort.new([3, 4, 2, 1])
    assert_equal [1, 2, 3, 4], merge_sorter.sort
  end

  def test_can_sort_a_large_array_of_numbers
    merge_sorter = SortingSuite::MergeSort.new([9, 3, 5, 1, 7, 8, 2, 4, 6])
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9], merge_sorter.sort
  end
end
