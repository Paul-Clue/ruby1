def bubble_sort(array)
  temp = 0
  array.length.times do
    array.each_with_index do |v, j|
      break if j + 1 == array.length

      next unless v > array[j + 1]

      temp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = temp
    end
  end
  array
end

num_arr = [3, 2, 4, 9, 1]
print bubble_sort(num_arr)
