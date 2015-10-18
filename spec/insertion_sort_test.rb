require 'minitest'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_class_exists
    assert SortingSuite::InsertionSort, "Class InsertionSort doesn't exist!"
  end

  def test_can_initialize_an_instance
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal SortingSuite::InsertionSort, insertion_sorter.class
  end

  def test_can_sort_an_empty_array
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal [], insertion_sorter.sort
  end

  def test_can_sort_a_single_digit_array
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal [1], insertion_sorter.sort([1])
  end

  def test_can_sort_an_array_of_numbers
    insertion_sorter = SortingSuite::InsertionSort.new
    unsorted = [5, 2, 3, 7, 1, 4]
    sorted = [1, 2, 3, 4, 5, 7]
    assert_equal sorted, insertion_sorter.sort(unsorted)
  end

  def test_can_sort_an_array_with_duplicate_numbers
    insertion_sorter = SortingSuite::InsertionSort.new
    unsorted = [4, 3, 5, 1, 1, 0]
    sorted = [0, 1, 1, 3, 4, 5]
    assert_equal sorted, insertion_sorter.sort(unsorted)
  end

  def test_can_sort_a_presorted_array
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal [1, 2, 3, 4], insertion_sorter.sort([1, 2, 3, 4])
  end

  def test_can_sort_a_reverse_array
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal [1, 2, 3, 4], insertion_sorter.sort([4, 3, 2, 1])
  end

  def test_can_sort_an_empty_array_in_place
    inplace_sorter = SortingSuite::InsertionSort.new
    assert_equal [], inplace_sorter.inplace_sort([])
  end

  def test_can_sort_a_single_digit_array_in_place
    inplace_sorter = SortingSuite::InsertionSort.new
    assert_equal [1], inplace_sorter.inplace_sort([1])
  end

  def test_can_sort_a_two_digit_array_in_place
    inplace_sorter = SortingSuite::InsertionSort.new
    assert_equal [1, 2], inplace_sorter.inplace_sort([2, 1])
  end

  def test_can_sort_an_array_of_numbers_in_place
    inplace_sorter = SortingSuite::InsertionSort.new
    assert_equal [1, 2, 3, 4, 5], inplace_sorter.inplace_sort([2, 1, 4, 5, 3])
  end

  def test_can_sort_an_array_of_letters_in_place
    inplace_sorter = SortingSuite::InsertionSort.new
    assert_equal %w(a b c d), inplace_sorter.inplace_sort(%w(d b c a))
  end

  def test_can_sort_an_array_with_duplicate_numbers_in_place
    insertion_sorter = SortingSuite::InsertionSort.new
    unsorted = [4, 3, 5, 1, 1, 0]
    sorted = [0, 1, 1, 3, 4, 5]
    assert_equal sorted, insertion_sorter.inplace_sort(unsorted)
  end

  def test_can_sort_a_presorted_array_in_place
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal [1, 2, 3, 4], insertion_sorter.inplace_sort([1, 2, 3, 4])
  end

  def test_can_sort_a_reverse_array_in_place
    insertion_sorter = SortingSuite::InsertionSort.new
    assert_equal [1, 2, 3, 4], insertion_sorter.inplace_sort([4, 3, 2, 1])
  end

  def test_in_place_sort_does_not_create_new_array
    inplace_sorter = SortingSuite::InsertionSort.new
    unsorted = [5, 3, 6, 2, 4, 1]
    sorted = inplace_sorter.inplace_sort(unsorted)
    assert_same sorted, unsorted
  end
end
