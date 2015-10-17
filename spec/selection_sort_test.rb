require 'minitest'
require './lib/selection_sort'

class SelectionSortTest < Minitest::Test
  def test_class_exists
    assert SortingSuite::SelectionSort, "Class SelectionSort doesn't exist yet!"
  end
end
