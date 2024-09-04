require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_revenue = Store.sum(:annual_revenue)

puts "Total Revenue: #{total_revenue}"

avg_revenue = total_revenue / Store.count

puts "Avg Revenue: #{avg_revenue}"

high_rev_stores = Store.where('annual_revenue >= ?', 1000000).count
puts "High Revenue Stores: #{high_rev_stores}"