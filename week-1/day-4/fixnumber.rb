def array_of_fixnums?(array)
    array.all? {|x| x.is_a? Fixnum}
  end
  puts array_of_fixnums?([1,4,5,3])