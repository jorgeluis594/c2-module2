def parts_sums(ls)
  ls.reduce([ls.sum]) { |sums, x| sums << sums.last - x }
end
parts_sums([0, 1, 3, 6, 10])