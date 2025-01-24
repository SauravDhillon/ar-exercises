require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find_by(id: 3)

# Deleting the third store from the database
@store3.destroy

# verifying that store is deleted
puts "Number of stores: #{Store.count}"