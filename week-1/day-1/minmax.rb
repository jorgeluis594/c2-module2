numbers = [2, 56, 5, 3, 4, 6, 1, -3456, 123891, 454, 1, 23, 5, 7]
min = numbers[0]
max = numbers[0]
numbers.each do |x|
    if x>max 
         max=x
    end
    if x<min 
         min=x
    end
end
puts min
puts max