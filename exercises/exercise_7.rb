require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask the user for a store name
puts "Please enter a store name:"
store_name = gets.chomp

# Attempt to create a store with the inputted name but leave out other fields
store = Store.new(name: store_name)

if store.save
  puts "Store '#{store_name}' created successfully!"
else
  puts "Failed to create store '#{store_name}'. Errors:"
  store.errors.full_messages.each { |message| puts "- #{message}" }
end