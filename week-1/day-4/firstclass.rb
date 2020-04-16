class Square
    def initialize (lado)
        @lado = lado
    end
    public
    def area
        @lado**2
    end
end

square_one = Square.new(10)
puts square_one.area # Logs: 100