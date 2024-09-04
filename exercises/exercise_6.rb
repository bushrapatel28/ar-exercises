require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sam", last_name: "Johnson", hourly_rate: 50)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 60)
@store2.employees.create(first_name: "Potato", last_name: "Billa", hourly_rate: 90)
@store2.employees.create(first_name: "Jane", last_name: "Smith", hourly_rate: 65)
@store2.employees.create(first_name: "Maya", last_name: "Laila", hourly_rate: 70)
@store2.employees.create(first_name: "Momo", last_name: "Chan", hourly_rate: 70)