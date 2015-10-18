require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'
require_relative 'selection_sort'

require 'pry'

module SortingSuite
  class Benchmark
    def fastest(set = [])
      times = calculate_all_sort_times(set)
      return_message(times.key(times.values.min), 'fastest')
    end

    def slowest(set = [])
      times = calculate_all_sort_times(set)
      return_message(times.key(times.values.max), 'slowest')
    end

    def calculate_all_sort_times(set)
      bubble_time = calculate_time(SortingSuite::BubbleSort, set)
      insertion_time = calculate_time(SortingSuite::BubbleSort, set)
      merge_time = calculate_time(SortingSuite::BubbleSort, set)
      selection_time = calculate_time(SortingSuite::SelectionSort, set)

      {
        bubble: bubble_time,
        insertion: insertion_time,
        merge: merge_time,
        selection: selection_time
      }
    end

    def return_message(sort_type, adjective)
      "#{sort_type.to_s.capitalize}Sort is the #{adjective}!"
    end

    def time(sort_type, set = [])
      duration = calculate_time(sort_type, set)
      "#{sort_type.to_s.split('::')[1]} took #{duration} seconds"
    end

    def calculate_time(sort_type, set)
      sorter = sort_type.new

      t1 = Time.now
      sorter.sort(set)
      t2 = Time.now

      t2 - t1
    end
  end
end

# benchmark = SortingSuite::Benchmark.new
# set = (1..100).to_a.shuffle
# puts benchmark.time(SortingSuite::InsertionSort, set)
# puts benchmark.time(SortingSuite::MergeSort)
