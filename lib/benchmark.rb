require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'

require 'pry'

module SortingSuite
  class Benchmark
    def fastest(set = [])
      times = calculate_all_sort_times(set)

      fastest_sort = times.key(times.values.min)

      return_message(fastest_sort, 'fastest')
    end

    def slowest(set = [])
      times = calculate_all_sort_times(set)

      slowest_sort = times.key(times.values.max)

      return_message(slowest_sort, 'slowest')
    end

    def calculate_all_sort_times(set)
      bubble_time = calculate_time(SortingSuite::BubbleSort, set)
      insertion_time = calculate_time(SortingSuite::BubbleSort, set)
      merge_time = calculate_time(SortingSuite::BubbleSort, set)
      {:bubble => bubble_time, :insertion => insertion_time, :merge => merge_time}
    end

    def return_message(sort_type, adjective)
      case sort_type
      when :bubble
        "BubbleSort is the #{adjective}!"
      when :insertion
        "InsertionSort is the #{adjective}!"
      when :merge
        "MergeSort is the #{adjective}!"
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
