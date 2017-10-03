require 'minitest/autorun'
require 'minitest/rg'

require_relative 'mergesort'

class MergeSortSpec < MiniTest::Test
  def test_empty_returns
    empty_array = []
    assert_equal(empty_array, MergeSort.merge_sort(empty_array))
  end

  def test_0_returns
    zero_array = [0]
    assert_equal(zero_array, MergeSort.merge_sort(zero_array))
  end

  def test_sorted_array_returns
    sorted_array = [1, 2, 5, 6, 88]
    assert_equal(sorted_array, MergeSort.merge_sort(sorted_array))
  end

  def test_array_sorts
    unsorted_array = [33, 5, 1, 76, 88, 2, 13]
    expected = [1, 2, 5, 13, 33, 76, 88]
    assert_equal(expected, MergeSort.merge_sort(unsorted_array))
  end
end
