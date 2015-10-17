require 'minitest'
require './lib/benchmark'

class BenchmarkTest < Minitest::Test
  def test_class_exists
    assert SortingSuite::Benchmark, "Class Benchmark doesn't exist yet!"
  end

  def test_can_determine_fastest_sort_method
    benchmark = SortingSuite::Benchmark.new
    message = 'MergeSort is the fastest!'
    assert_equal message, benchmark.fastest([2, 8, 1, 0, 5])
  end

  def test_can_determine_slowest_sort_method
    benchmark = SortingSuite::Benchmark.new
    message = 'BubbleSort is the slowest!'
    assert_equal message, benchmark.slowest([1, 2, 3, 4, 5])
  end
end
