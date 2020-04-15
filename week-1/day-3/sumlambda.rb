def summation(n)
    sum = 0
    (1..n).each {|x| sum += yield(x)}
    return sum
  end
  
  print summation(3) { |val| val * 2 } # 1 * 2 + 2 * 2 + 3 * 2 = 12