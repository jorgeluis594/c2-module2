def summation(n)
  puts n
  (1..n).inject(0) { |sum, i| sum+=yield(i) }
end

puts summation(3) { |val| val * 2 } # 1 * 2 + 2 * 2 + 3 * 2 = 12