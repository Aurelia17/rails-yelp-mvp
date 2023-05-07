# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

restaurant1 = { name: Faker::Restaurant.name, address: Faker::Address.full_address,
                phone_number: Faker::Number.leading_zero_number(digits: 10), category: 'italian' }
restaurant2 = { name: Faker::Restaurant.name, address: Faker::Address.full_address,
                phone_number: Faker::Number.leading_zero_number(digits: 10), category: 'japanese' }
restaurant3 = { name: Faker::Restaurant.name, address: Faker::Address.full_address,
                phone_number: Faker::Number.leading_zero_number(digits: 10), category: 'french' }
restaurant4 = { name: Faker::Restaurant.name, address: Faker::Address.full_address,
                phone_number: Faker::Number.leading_zero_number(digits: 10), category: 'belgian' }
restaurant5 = { name: Faker::Restaurant.name, address: Faker::Address.full_address,
                phone_number: Faker::Number.leading_zero_number(digits: 10), category: 'chinese' }

[restaurant1, restaurant2, restaurant3, restaurant4, restaurant5].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
