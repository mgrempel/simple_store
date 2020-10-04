require "csv"

# Clear out the db
Product.destroy_all
Category.destroy_all

# seed db
csv_file = Rails.root.join("db/products.csv")
csv_data = File.read(csv_file)

products = CSV.parse(csv_data, headers: true)

products.each do |product|
  # Check if category exists, if not, create it
  category = if Category.exists?(name: product["category"])
               Category.where(name: product["category"]).first
             else
               Category.create(name: product["category"])
             end

  category.products.build(title:          product["name"],
                          description:    product["description"],
                          price:          product["price"],
                          stock_quantity: product["stock quantity"])
  category.save
end
