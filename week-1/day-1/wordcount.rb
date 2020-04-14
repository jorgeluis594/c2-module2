def wordcount(frase)
    result = Hash.new(0)
    frase.split.each{ |x| result[x.downcase]+=1}
    return result
end

print wordcount('cake cake caKe I like cake very much please gIve me cake I need the cake i need it')