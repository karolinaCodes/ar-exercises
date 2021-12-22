require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores= Store.where(mens_apparel: true)

# puts @mens_stores

# loop through each mens store and output store name and annual revenue
@mens_stores.each do |store|
  puts "Store name: #{store.name}"
  puts "Annual reveneue: #{store.annual_revenue}"
end

@womens_store_below_1M = Store.where(womens_apparel: true).where('annual_revenue < 1000000')

# puts @womens_store_below_1M

@womens_store_below_1M.each do |store|
  puts "Store name: #{store.name}"
  puts "Annual reveneue: #{store.annual_revenue}"
end
