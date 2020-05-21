def digital_root(n)
  n.to_s.size>1 ? digital_root(n.to_s.split("").inject(0) {|sum,x| sum+x.to_i}) : n
end

p digital_root(456)