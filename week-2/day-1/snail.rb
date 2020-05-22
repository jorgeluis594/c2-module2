def snail(array, direction = :top)
  return [] if array.empty?
  case direction
  when :top
    return array[0] + snail(array[1..-1],:right)
  when :right
    return array.map {|x| x.pop} + snail(array, :bottom)
  when :bottom
    return array[-1].reverse + snail(array[0..-2], :left)
  when :left
    return array.map {|x| x.shift}.reverse + snail(array, :top)
  end
end