class MergeSort
  def self.merge_sort(list)
    return list if list.length <= 1

    left, right = [], []
    list.each_with_index do |value, index|
      if index < list.length / 2 then left.push(value)
      else right.push(value)
      end
    end

    left = merge_sort(left)
    right = merge_sort(right)

    merge(left, right)
  end

  private
  def self.merge(left, right)
    result = []

    while left.any? && right.any?
      if left.first <= right.first then result.push(left.slice!(0))
      else result.push(right.slice!(0))
      end
    end

    result.concat(left, right)
  end
end
