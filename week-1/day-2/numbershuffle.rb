def number_shuffle(number)
  digitos = number.to_s.split("")
  numerostotales = digitos.size == 3 ? 6 : 24
  numeros = []
  while numeros.uniq.size != numerostotales
    numeros << digitos.shuffle.join.to_i
  end
  numeros.uniq.sort
end

puts number_shuffle(123)