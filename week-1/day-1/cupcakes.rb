puts "ingrese cantidad de cupcakes"

cantidad = gets.chomp.to_i

if cantidad>=6 && cantidad < 12
  desc  = 0.04
elsif cantidad >= 12
  desc = 0.1
end
puts "Ingrese tipo de pan"
puts "1 - Vanilla"
puts "2 - Chocolate"
puts "3 - Red Velvet"

opc = gets.chomp.to_i

case opc
when 1
  pan = 0.5
when 2
  pan = 0.75
when 3
  pan = 0.85
end

puts "Ingrese Frosting"
puts "1 - Vanilla"
puts "2 - Oreo"
puts "3 - Mint chocolate"

opc = gets.chomp.to_i

case opc
when 1
  frosting = 0.6
when 2
  frosting = 1.1
when 3
  frosting = 1.45
end

puts "Ingrese relleno"
puts "1 - Nutella"
puts "2 - Strawberry"
puts "3 - Peanut butter"

opc = gets.chomp.to_i

case opc
when 1
  filling = 1
when 2
  filling = 0.55
when 3
  filling = 0.45
end

costoxunidad = pan + frosting + filling

puts "Ud debe pagar"
puts costoxunidad*cantidad*(1-desc)