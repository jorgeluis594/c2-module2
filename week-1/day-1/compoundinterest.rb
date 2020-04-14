def calcularInteres (monto, interes, periodos)
    saldo = monto
    i=1
    while i<=periodos
        montoInteres = (saldo * interes.to_f / 100 ).round(2)
        saldo+=montoInteres
        i+=1
    end
    return saldo
end

puts "Ingrese el:  "
print "Monto: "
monto = gets.chomp
print "interes: "
interes = gets.chomp
print "Periodos"
periodos = gets.chomp

print "El monto total es #{calcularInteres(monto,interes,periodos)}"