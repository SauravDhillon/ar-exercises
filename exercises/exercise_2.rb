require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Step 1: Load the first store and assign it to @store1
@store1 = Store.find_by(id: 1)

# Step 2: Load the second store and assign it to @store2
@store2 = Store.find_by(id: 2)

# Step 3: Update the name of the first store
@store1.update(name: 'Toronto') 

