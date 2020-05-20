def union(*arrays)
  arrays.inject([]) do |union,array|
    array.each {|num| union << num if !union.include?(num)}
    union
  end
end

p union([5, 10, 15], [15, 88, 1, 5, 7], [100, 15, 10, 1, 5])
# Should output: [5, 10, 15, 88, 1, 7, 100]