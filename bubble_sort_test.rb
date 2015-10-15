require 'minitest'
require_relative 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_class_exists
    assert BubbleSort, "Seems like BubbleSort doesn't exist yet!"
  end

  def test_can_initialize_a_instance
    bubble = BubbleSort.new
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

  def test_can_sort_an_array_of_numbers
    bubble = BubbleSort.new([5, 3, 7, 2])
    assert_equal [2, 3, 5, 7], bubble.sort
  end

  def test_can_sort_a_large_array_of_numbers
    bubble = BubbleSort.new([3, 14, 8, 90, 4, 2, 6, 78, 34, 1, 7])
    assert_equal [1, 2, 3, 4, 6, 7, 8, 14, 34, 78, 90], bubble.sort
  end

  def test_can_sort_array_with_duplicate_numbers
    bubble = BubbleSort.new([7, 2, 4, 9, 4, 8, 8, 1, 3])
    assert_equal [1, 2, 3, 4, 4, 7, 8, 8, 9], bubble.sort
  end

  def test_can_sort_an_array_of_letters
    bubble = BubbleSort.new(['j', 'e', 'r', 'k'])
    assert_equal ['e', 'j', 'k', 'r'], bubble.sort
  end
end
