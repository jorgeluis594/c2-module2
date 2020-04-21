def parsingdata(str)
   hash = str
            .split("\n")[1..-1]
            .map do |x|
                 data = /(?<category>[\w\s]+),\s(?<symbol>\w{3})\s(?<price>[1-9.]+),\s(?<stock>\w{4,5}),\s(?<amount>\d+),\s(?<name>\w+)/.match(x)
                 {
                     category: data[:category],
                     symbol: data[:symbol],
                     price: data[:price].to_f,
                     stock: data[:stock],
                     amount: data[:amount].to_i,
                     name: data[:name]
                 }
            end
end

def howmuch(data)
  data_tot_usd = data.map do |item|
        case item[:symbol]
        when "PEN"
            item[:valuestock] = (item[:price] * item[:amount] /3).round(2)
        when "ARS"
            item[:valuestock] = (item[:price] * item[:amount] /40).round(2)
        else
            item[:valuestock] = (item[:price] * item[:amount]).round(2)
        end
       item
    end
    total = data_tot_usd.inject(0) {|total,item| total + item[:valuestock]}
    max_obj = data_tot_usd.max {|a,b| a[:valuestock] <=> b[:valuestock]}
    {
        total: total,
        max_obj: max_obj
    }     
end

str = "Category, (Symbol) Price, Stock, Amount, Name
Sporting Goods, USD 49.99, true, 10, Football
Sporting Goods, PEN 9.99, true, 3, Baseball
Sporting Goods, ARS 29.99, false, 0, Basketball
Electronics, PEN 99.99, true, 5, iPod Touch
Electronics, USD 399.99, false, 0, iPhone 5
Electronics, PEN 199.99, true, 2, Nexus 7"

p howmuch(parsingdata(str))
    