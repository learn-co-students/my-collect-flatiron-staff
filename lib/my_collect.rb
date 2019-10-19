def my_collect(array)
  i = 0
  mapped = []

  while i < array.length
    mapped << yield(array[i])
    i += 1
  end

  mapped
end
