require 'minitest'
require_relative 'insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_class_exists
    assert InsertionSort, "Oh no! Class InsertionSort doesn't exist!"
  end

  def test_can_initialize_an_instance
    insert = InsertionSort.new
    assert_equal InsertionSort, insert.class
  end

  def test_can_accept_an_array_of_numbers
    insert = InsertionSort.new([3, 7, 4])
    assert_equal [3, 7, 4], insert.array
  end
end
