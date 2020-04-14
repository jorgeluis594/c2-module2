def lenghtFinder(matrixstring)
    lenghts = []
    matrixstring.each {|x| lenghts.push(x.length)}
    return lenghts
end
print lenghtFinder(['Ruby','Rails','C42'])