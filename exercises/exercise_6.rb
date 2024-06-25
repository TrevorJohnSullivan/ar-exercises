require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Adding employees to the first store (Burnaby)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Jane", last_name: "Smith", hourly_rate: 55)
@store1.employees.create(first_name: "Alex", last_name: "Johnson", hourly_rate: 45)

# Adding employees to the second store (Richmond)
@store2.employees.create(first_name: "Sarah", last_name: "Connor", hourly_rate: 65)
@store2.employees.create(first_name: "Kyle", last_name: "Reese", hourly_rate: 55)
@store2.employees.create(first_name: "Michael", last_name: "Biehn", hourly_rate: 50)
@store2.employees.create(first_name: "Linda", last_name: "Hamilton", hourly_rate: 60)

# Output employees for each store
puts "Employees at #{@store1.name}:"
@store1.employees.each do |employee|
  puts "#{employee.first_name} #{employee.last_name}, Hourly Rate: $#{employee.hourly_rate}"
end

puts "Employees at #{@store2.name}:"
@store2.employees.each do |employee|
  puts "#{employee.first_name} #{employee.last_name}, Hourly Rate: $#{employee.hourly_rate}"
end
