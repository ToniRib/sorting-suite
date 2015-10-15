require 'minitest'
require_relative 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_class_exists
    assert BubbleSort, "Seems like BubbleSort doesn't exist yet!"
  end

  def test_can_initialize_a_sort
    bubble = BubbleSort.new([])
    assert_equal BubbleSort, bubble.class
  end

  def test_can_accept_an_array_of_numbers
    bubble = BubbleSort.new([1, 2, 3])
    assert_equal [1, 2, 3], bubble.array
  end

  def test_can_accept_an_array_of_letters
    bubble = BubbleSort.new(['a', 'b', 'c'])
    assert_equal ['a', 'b', 'c'], bubble.array
  end

  def test_can_sort_array_of_numbers
    bubble = BubbleSort.new([5, 3, 7, 2])
    assert_equal [2, 3, 5, 7], bubble.sort
  end
end
