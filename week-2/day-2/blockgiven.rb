def map(array)
  result = []
  for el in array do
   block_given? ? result << yield(el) : result << el
  end
  result
end
