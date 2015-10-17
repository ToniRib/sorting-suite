require 'minitest'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_class_exists
    assert SortingSuite::InsertionSort, "Oh no! Class InsertionSort doesn't exist!"
  end

  def test_can_initialize_an_instance
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal SortingSuite::InsertionSort, insertion_sorter.class
  end

  def test_can_sort_an_empty_array
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal [], insertion_sorter.sort([])
  end

  def test_can_sort_a_single_digit_array
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal [1], insertion_sorter.sort([1])
  end

  def test_can_sort_an_array_of_numbers
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal [1, 2, 3, 4, 5, 7, 8], insertion_sorter.sort([5, 2, 8, 3, 7, 1, 4])
  end

  def test_can_sort_an_array_with_duplicate_numbers
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal [0, 1, 1, 3, 4, 5, 5, 7, 9], insertion_sorter.sort([4, 3, 5, 7, 5, 9, 1, 1, 0])
  end
end
