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

  def test_can_sort_an_empty_array
    selection_sorter = SortingSuite::SelectionSort.new
    assert_equal [], selection_sorter.sort
  end
end
