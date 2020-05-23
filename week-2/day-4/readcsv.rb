require 'csv'

def read_csv
  data = CSV.read("grades.csv", headers: true)
  data.map(&:to_hash).sort_by{|key, v| -key["Final"].to_i}[0..2]
end

read_csv.each_with_index do |hash,index|
  puts "#{index} - #{hash["First name"]} with a final grade #{hash["Final"]}"
end
