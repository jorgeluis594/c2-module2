def sum(*number)
    cont = 0
    number.each{|x| cont+=x}
    cont
end
print sum(1,2,3,4,5,6,6,7,8)