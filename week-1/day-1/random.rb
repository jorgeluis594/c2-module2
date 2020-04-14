def selectrandom(matriz,n)
    selectos = []
    n.times {selectos.push(matriz[rand(matriz.length-1)])}
    return selectos
end
print selectrandom([1, 2, 3, 4, 5],2)