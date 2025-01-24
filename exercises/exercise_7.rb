require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# Step 1: Prompt the user for a store name
puts "Please enter a store name:"
store_name = gets.chomp

# Step 2: Attempt to create a store with just the name
new_store = Store.new(name: store_name)

# Step 3: Save the record and handle validation errors
if new_store.save
  puts "Store created successfully!"
else
  puts "Failed to create store. Errors:"
  new_store.errors.full_messages.each do |message|
    puts "- #{message}"
  end
end