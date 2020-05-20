class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |cost,order|
      cost + order.keys.inject(0) {|sum,key| sum+order[key]*@menu[key] }
    end
  end
end
