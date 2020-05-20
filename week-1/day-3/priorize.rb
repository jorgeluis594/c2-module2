def prioritize(array)
  array.inject([]) do |priorize, num|
    if yield(num)
      priorize.unshift(num)
    else
      priorize << num
    end
  end
end

test_array = [2, 3, 4, 5]
p prioritize(test_array) { |val| val > 3 }
# Should output: [4, 5, 2, 3]