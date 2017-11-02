def interleave(array_1, array_2)
  array_1, array_2 = [array_1, array_2].sort_by(&:length)

  if array_2.length != 0 || array_1.length != 0
    interval = array_2.length / array_1.length
  else
    interval = 1
  end

  result_array = []

  while !array_1.empty? || !array_2.empty?
    result_array << array_2.shift(interval)
    result_array << array_1.shift
  end

  result_array.flatten.compact
end
