def age?(year, month,day)
    date = Time.new(year,month,day)
     (Time.now - date).to_i/31536000
end

p age?(1994, 2, 24) # Should return 26