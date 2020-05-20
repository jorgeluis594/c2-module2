def intersection(*arrays)
  arrays[0].inject([]) do |intersections, num|
    include = true
  arrays[1..-1].each do |array|
    include = false if !array.include?(num)
  end
    include ? intersections << num : intersections
  end
end

puts intersection([5, 10, 15, 20], [15, 88, 1, 5, 7], [1, 10, 15, 5, 20])
# Should output: [5, 15]