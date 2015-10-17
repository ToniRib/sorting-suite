require 'minitest'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_class_exists
    assert SortingSuite::BubbleSort, "Seems like BubbleSort doesn't exist yet!"
  end

  def test_can_initialize_an_instance
    bubble_sorter = SortingSuite::BubbleSort.new
    assert_equal SortingSuite::BubbleSort, bubble_sorter.class
  end

  def test_can_sort_an_empty_array
    bubble_sorter = SortingSuite::BubbleSort.new
    assert_equal [], bubble_sorter.sort([])
  end

  def test_can_sort_a_single_digit_array
    bubble_sorter = SortingSuite::BubbleSort.new
    assert_equal [1], bubble_sorter.sort([1])
  end

  def test_can_sort_an_array_of_numbers
    bubble_sorter = SortingSuite::BubbleSort.new
    assert_equal [2, 3, 5, 7], bubble_sorter.sort([5, 3, 7, 2])
  end

  def test_can_sort_a_large_array_of_numbers
    bubble_sorter = SortingSuite::BubbleSort.new
    assert_equal [1, 2, 3, 4, 6, 7, 8, 14, 34, 78, 90], bubble_sorter.sort([3, 14, 8, 90, 4, 2, 6, 78, 34, 1, 7])
  end

  def test_can_sort_an_array_with_duplicate_numbers
    bubble_sorter = SortingSuite::BubbleSort.new
    assert_equal [1, 2, 3, 4, 4, 7, 8, 8, 9], bubble_sorter.sort([7, 2, 4, 9, 4, 8, 8, 1, 3])
  end

  def test_can_sort_an_array_of_letters
    bubble_sorter = SortingSuite::BubbleSort.new
    assert_equal %w(e j k r), bubble_sorter.sort(%w(j e r k))
  end
end
