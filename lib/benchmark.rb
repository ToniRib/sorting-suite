require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'

require 'pry'

module SortingSuite
  class Benchmark
    def fastest(set = [])
      bubble_time = calculate_time(SortingSuite::BubbleSort, set)
      insertion_time = calculate_time(SortingSuite::BubbleSort, set)
      merge_time = calculate_time(SortingSuite::BubbleSort, set)

      if bubble_time < insertion_time && bubble_time < merge_time
        'BubbleSort is the fastest!'
      elsif insertion_time < bubble_time && insertion_time < merge_time
        'InsertionSort is the fastest!'
      else
        'MergeSort is the fastest!'
      end
    end

    def time(sort_type, set = [])
      duration = calculate_time(sort_type, set)
      "#{sort_type.to_s.split('::')[1]} took #{duration} seconds"
    end

    def calculate_time(sort_type, set = [])
      t1 = Time.now
      sort_type.new.sort(set)
      t2 = Time.now
      t2 - t1
    end
  end
end

benchmark = SortingSuite::Benchmark.new
set = (1..100).to_a.shuffle
puts benchmark.time(SortingSuite::InsertionSort, set)
puts benchmark.time(SortingSuite::MergeSort)
