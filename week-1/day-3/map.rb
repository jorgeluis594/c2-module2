def map(arr)
    newArray = []
    for i in (0...arr.length) do
       newArray << yield(arr[i])
    end
    newArray
end

test_array = [2, 3, 4, 5]
print map(test_array) { |element| element * 3}

# Result: [6, 9, 12, 15]