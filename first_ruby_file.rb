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

def bubble_sort_by(array)
  temp = 0
  array.length.times do
    array.each_with_index do |v, j|
      break if j + 1 == array.length

      var = yield(v, array[j + 1]) <=> 1
      var2 = (var > -1)

      next unless var2 == true

      temp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = temp
    end
  end
  array
end

num_arr = [3, 2, 4, 9, 1, 15, 2000, 14]
str_arr = %w[hiya hello hi hey h]
print bubble_sort_by(num_arr) { |first, second| first - second }
print bubble_sort_by(str_arr) { |first, second| first.length - second.length }
