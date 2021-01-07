def bubble_sort(array)
  temp = 0
  array.length.times do
    array.each_with_index do |v, j|
      if array[j + 1]
        next if v > array[j + 1]
          temp = array[j]
          array[j] = array[j + 1]
          array[j + 1] = temp
        end
      end
    end
  end
  array
end

num_arr = [9, 5, 1, 3, 7]
print bubble_sort(num_arr)
