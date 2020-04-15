def proccess_orders(orders)
    list = Hash.new(0)
    orders.each do |nombre , order|
        list[order] += 1
    end
    return list
end
print proccess_orders({
    "julio" => "pizza",
    "diego" => "saltado",
    "andres" => "hamburguer",
    "ximena" => "ceviche",
    "felipe" => "pizza",
    "jon" => "saltado",
    "snow" => "ceviche",
    "pepe" => "fried chicken",
    "queen of dragons" => "ice cream",
    "jose" => "hamburguer",
    "jafeth" => "fried chicken"
  }) 
