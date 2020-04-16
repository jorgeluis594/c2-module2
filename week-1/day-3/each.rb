def each(arr)
   for i in (0...arr.length) do
       yield(arr[i])
   end
end

test_array = [2, 3, 4, 5]
each(test_array) { |element| puts "Number is #{element}"}