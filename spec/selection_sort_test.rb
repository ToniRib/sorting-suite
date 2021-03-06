require 'minitest'
require './lib/selection_sort'

class SelectionSortTest < Minitest::Test
  def test_class_exists
    assert SortingSuite::SelectionSort, "Class SelectionSort doesn't exist yet!"
  end

  def test_can_initialize_an_instance
    selection_sorter = SortingSuite::SelectionSort.new
    assert_equal SortingSuite::SelectionSort, selection_sorter.class
  end

  def test_can_find_the_minimum_of_an_array
    selection_sorter = SortingSuite::SelectionSort.new
    assert_equal 1, selection_sorter.find_min([5, 3, 6, 4, 1, 2])
  end

  def test_can_sort_an_empty_array
    selection_sorter = SortingSuite::SelectionSort.new
    assert_equal [], selection_sorter.sort
  end

  def test_can_sort_a_single_digit_array
    selection_sorter = SortingSuite::SelectionSort.new
    assert_equal [1], selection_sorter.sort([1])
  end

  def test_can_sort_a_two_digit_array
    selection_sorter = SortingSuite::SelectionSort.new
    assert_equal [1, 2], selection_sorter.sort([2, 1])
  end

  def test_can_sort_an_array_of_numbers
    selection_sorter = SortingSuite::SelectionSort.new
    assert_equal [1, 2, 3, 4, 5, 6], selection_sorter.sort([5, 3, 6, 1, 2, 4])
  end

  def test_can_sort_an_array_with_duplicate_numbers
    selection_sorter = SortingSuite::SelectionSort.new
    unsorted = [5, 3, 6, 4, 1, 2, 4]
    sorted = [1, 2, 3, 4, 4, 5, 6]
    assert_equal sorted, selection_sorter.sort(unsorted)
  end

  def test_can_sort_a_presorted_array
    selection_sorter = SortingSuite::SelectionSort.new
    assert_equal [1, 2, 3, 4], selection_sorter.sort([1, 2, 3, 4])
  end

  def test_can_sort_a_reverse_array
    selection_sorter = SortingSuite::SelectionSort.new
    assert_equal [1, 2, 3, 4], selection_sorter.sort([4, 3, 2, 1])
  end

  def test_can_sort_an_array_of_letters
    selection_sorter = SortingSuite::SelectionSort.new
    assert_equal %w(a b c d e), selection_sorter.sort(%w(e c d b a))
  end
end
