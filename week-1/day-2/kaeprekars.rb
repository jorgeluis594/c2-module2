def kaprekar?(k)
  digits = k.to_s.size
  cuadrado = (k ** 2).to_s
  second = cuadrado[-digits..-1]
  first = cuadrado.size.even? ? cuadrado[0..-1] : cuadrado[0..digits-2]
  k == first.to_i + second.to_i
end
