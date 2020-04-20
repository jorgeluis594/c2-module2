puts "Ingrese su string"
cadena = gets.chomp
puts "ingrese cantidad de veces"
n = gets.chomp.to_i

def put_n(string, n)
    if n <= 0
        raise ArgumentError.new("Debe ser positivo")
    elsif !n.is_a? Integer
        raise ArgumentError.new("Debe ser entero")
    else
        n.times{puts string}
    end
end


begin 
    put_n(cadena,n)
rescue ArgumentError
    puts "I don't understand how many times do you want to echo the string!"
end