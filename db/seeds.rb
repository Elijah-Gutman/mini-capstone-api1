# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.create(id: 1, name: "Shoes", price: 9, image_url: "https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.jpg?s=612x612&w=0&k=20&c=A3w_a9q3Gz-tWkQL6K00xu7UHdN5LLZefzPDp-wNkSU=", description: "A Pair of shoes")

Product.create(id: 2, name: "Shirts", price: 60, image_url: "https://t4.ftcdn.net/jpg/07/63/26/85/360_F_763268538_sk7wNf87lh0ioZMnAnLBOBlf1unB2RNi.jpg", description: "A stack of shirts")

Product.create(id: 3, name: "Ties", price: 200, image_url: "https://t4.ftcdn.net/jpg/09/16/54/31/
360_F_916543101_AoWJ2snYsTA8sM3BoMLjniUF89y8N7yr.jpg", description: "A nice tie")

Supplier.create()
