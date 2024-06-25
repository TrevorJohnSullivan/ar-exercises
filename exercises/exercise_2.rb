require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first store (id = 1) and assign to @store1
@store1 = Store.find_by(id: 1)
puts "Before update: #{@store1.inspect}" if @store1

# Load the second store (id = 2) and assign to @store2
@store2 = Store.find_by(id: 2)
puts "Second store: #{@store2.inspect}" if @store2

# Update the first store's name
if @store1
  @store1.update(name: 'New Burnaby Store')
  puts "After update: #{@store1.inspect}"
end
