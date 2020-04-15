 def nonduplicates (matriz)
     array = [matriz[0]]
     matriz.sort!
     for i in (0...matriz.length-1) do
         if matriz[i] != matriz[i+1]
             array << matriz[i+1]
         end
     end
     return array
end

puts nonduplicates ([1, 2, 3, 2, 5, 8, 5, 10, 5])