require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
count = @mens_stores.count
i = 0

while i < count
  puts "Name: #{@mens_stores[i].name}"
  puts "Annual Revenue: #{@mens_stores[i].annual_revenue}"
  i += 1
end

@womens_stores = Store.where('womens_apparel = ? AND annual_revenue < ?', true, 1000000)
count = @womens_stores.count
i = 0

while i < count
  puts "Name: #{@womens_stores[i].name}"
  puts "Annual Revenue: #{@womens_stores[i].annual_revenue}"
  i += 1
end