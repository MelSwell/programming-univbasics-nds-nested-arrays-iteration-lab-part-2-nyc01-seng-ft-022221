require 'pry'

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  min_nums = []
  row_idx = 0
  while row_idx < src.length do
    el_idx = 0
    min = 0
    while el_idx < src[row_idx].length do
      if src[row_idx][el_idx - 1] < src[row_idx][el_idx]
      min = src[row_idx][el_idx]
      end
      el_idx += 1
    end
    min_nums << min
    row_idx +=1
  end
  min_nums
end

puts find_min_in_nested_arrays([[4, 78, 2, 15], [3, 4, 2, 12]])