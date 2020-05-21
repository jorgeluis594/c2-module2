def my_languages(results)
  results.select {|key,value| value>=60}.sort_by {|k,v| -v}.map {|x| x[0]}
end

p my_languages({"Hindi" => 60, "Dutch" => 93, "Greek" => 71})