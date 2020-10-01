# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Adds products to the db.

676.times do
  Product.create(title:          Faker::Commerce.unique.product_name,
                 price:          Faker::Commerce.price,
                 stock_quantity: Faker::Number.decimal)
end
