require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Create employees for @store1 (Burnaby)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 55)

# Create employees for @store2 (Richmond)
@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 45)
@store2.employees.create(first_name: "Michael", last_name: "Scott", hourly_rate: 65)
@store2.employees.create(first_name: "Dwight", last_name: "Schrute", hourly_rate: 50)
