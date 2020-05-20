def pingpong (n)
  sum = 1
  cont = 0
  for i in 1..n
    cont += sum
    sum *=-1 if i%7 == 0 || i%10 == 7
  end
  cont
end

puts pingpong 69