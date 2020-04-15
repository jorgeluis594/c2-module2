def pixelesRojos(matriz)
    countRojos = 0
    matriz.each do |submatriz|
        submatriz.each do |pixeles|
            if (pixeles[0]>100 && pixeles[0].to_f/6.5>pixeles[1] && pixeles[0].to_f/6.5>pixeles[2])
                countRojos+=1
            end
        end
    end
    return countRojos
end

print pixelesRojos(
[
[[ 65, 67, 23], [234,176, 0], [143, 0, 0]],
[[255, 30, 51], [156, 41, 38], [ 3,243,176]],
[[255,255,255], [ 0, 0, 0], [133, 28, 13]],
[[ 26, 43,255], [ 48, 2, 2], [ 57, 89,202]]
]
)