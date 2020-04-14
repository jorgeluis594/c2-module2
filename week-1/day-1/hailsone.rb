def hailstone(x)
    loop do
        x%2==0 ? x/=2 : x=x*3 +1
        print "#{x} "
        break if x==1
    end
end

puts "Ingrese su numero entero"

hailstone(gets.chomp.to_i)