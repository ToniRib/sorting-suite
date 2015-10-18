require 'minitest'
require './lib/benchmark'

class BenchmarkTest < Minitest::Test
  def test_class_exists
    assert SortingSuite::Benchmark, "Class Benchmark doesn't exist yet!"
  end

  def test_can_determine_fastest_sort_method
    benchmark = SortingSuite::Benchmark.new
    message = 'MergeSort is the fastest!'
    unsorted = (1..100).to_a.shuffle
    assert_equal message, benchmark.fastest(unsorted)
  end

  def test_can_determine_slowest_sort_method
    benchmark = SortingSuite::Benchmark.new
    message = 'SelectionSort is the slowest!'
    assert_equal message, benchmark.slowest([1, 2, 3, 4, 5])
  end

  def test_returns_correct_message
    benchmark = SortingSuite::Benchmark.new
    message = 'BubbleSort is the slowest!'
    assert_equal message, benchmark.return_message(:bubble, 'slowest')
  end
end
