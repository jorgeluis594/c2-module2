def put_n(string, n)
  if n <= 0
    raise ArgumentError.new("Debe ser positivo")
  elsif !n.is_a? Integer
    raise ArgumentError.new("Debe ser entero")
  else
    n.times{puts string}
  end
end
def preguntar
  begin
    put_n("This will be printed 5 times!", gets.chomp.to_i)
  rescue
    puts "I don't understand how many times do you want to echo the string!"
    preguntar
  end
end

preguntar