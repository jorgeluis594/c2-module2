def unlucky_days(year)
  (1..12).inject(0) {|sum,x| Time.new(year,x,13).friday? ? sum += 1 : sum }
end

p unlucky_days(1812)