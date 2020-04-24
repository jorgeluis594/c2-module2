require 'csv'

datos = CSV.read("grades.csv", headers: true)

 array_grades = grades.map(&:to_hash).sort_by{|key, v| key["Final"].to_i}.reverse!
 top_grades = array_grades[0..2]
 i = 1
 for student in top_grades
     puts "#{i} - #{student["First name"]} with a final grade of #{student["Final"]}"
     i+=1
 end