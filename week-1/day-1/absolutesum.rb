def absolutesum(a,b)
    (a+b)<0 ? -(a+b) : a+b
end
print "Primer valor: "
a = gets.chomp.to_f
print "Segundo valor: "
b = gets.chomp.to_f
print "El valor absoluto es: #{absolutesum(a,b)}"