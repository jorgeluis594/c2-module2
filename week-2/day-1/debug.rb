def put_n(string, n)
    if n <= 0
        raise ArgumentError.new("Debe ser positivo")
    elsif !n.is_a? Integer
        raise ArgumentError.new("Debe ser entero")
    else
        n.times{puts string}
    end
end
put_n("This will be printed 5 times!", 5)