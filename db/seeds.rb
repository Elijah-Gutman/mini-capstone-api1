# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.create(supplier_id: 1, id: 1, name: "Shoes", price: 9, description: "A Pair of shoes")

Product.create(supplier_id: 1, id: 2, name: "Shirts", price: 60, description: "A stack of shirts")

Product.create(supplier_id: 2, id: 3, name: "Ties", price: 200, description: "A nice tie")

Supplier.create(name: "Gucci", email: "Gucci@expesnivenonsense.com", phone_number: "13378008")
Supplier.create(name: "Fendi", email: "Fendi@expesnivenonsense.com", phone_number: "999999999")

Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFNODUKcTOrxWxhtKB0f5_YaRxF-WuVtoabA&s", product_id: 1)
Image.create(url: "https://www.fourkids.com/cdn/shop/files/Fendi-b7e48dd77d04d4d0a516192e220fd838.png?v=1724150908", product_id: 2)
Image.create(url: "https://www.bows-n-ties.com/32861-xlarge_default/Elegant-Striped-Necktie-in-Navy-and-Light-Blue.jpg", product_id: 3)
Image.create(url: "https://www.tiffanyrose.com/v3-img/products/A_WGTVR-zoom.jpg", product_id: 3)
Image.create(url: "https://m.media-amazon.com/images/I/81mQszUx9iL._AC_UY1000_.jpg", product_id: 3)
