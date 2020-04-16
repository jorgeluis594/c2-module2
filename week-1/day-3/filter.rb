def filter(arr)
    newArray = []
    for i in (0...arr.length) do
        newArray << arr[i] if yield(arr[i])
    end
    newArray
end

test_array = [2, 3, 4, 5]
print filter(test_array) { |element| element > 3}
# Result: [4, 5] -> numbers 2 and 3 were removed