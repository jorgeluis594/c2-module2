# Struct is another built in class from the standard library.
# It allows to define Classes that only have some properties on the fly
require 'csv'
Student = Struct.new(:name, :email)
# Same as:
# class Student
#   attr_accessor :name, :email
#   def initialize(name, email)
#    @name = name
#    @email = email
#   end
# end
#

# Generates a CSV string from the students.
def generate_csv(students)
  csv = CSV.generate do |csv|
    students.each do |student|
      csv << [student[:name], student[:email]]
    end
  end
  csv
end

students = [
  Student.new("Julio", "jnavarro@able.co"),
  Student.new("ximena", "ximena@able.co"),
  Student.new("diego", "diego@able.co"),
  Student.new("jordi", "jordi@able.co"),
  Student.new("andres", "andres@able.co"),
]

puts generate_csv(students)
# Outputs:
# name,email
# julio,jnavarro@able.co
# ximena,ximena@able.co
# diego,diego@able.co
# jordi,jordi@able.co
# andres,andres@able.co