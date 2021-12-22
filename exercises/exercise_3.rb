require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find_by(id: 3)

# delete @store3
@store3.destroy

# verify that @store3 has been deleted
puts "Number of stores: #{Store.count}" 