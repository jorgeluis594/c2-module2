class MyArray
    attr_reader :array
  
    def initialize(array)
      @array = array
    end
  
    def sum(initial_value = 0)
      suma = initial_value
      @array.each do |x|
        block_given? ? suma += yield(x) : suma += x
      end
      return suma
    end
  end

my_array = MyArray.new([1, 2, 3])
puts my_array.sum
puts my_array.sum(10)
puts my_array.sum(0) {|n| n ** 2 }