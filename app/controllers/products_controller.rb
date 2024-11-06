class ProductsController < ApplicationController
  def one_product
    product = Product.first
    render json: { name: product.name, price: product.price, image_url: product.image_url, description: product.description }
  end

  def all_products
    products = Product.all
    result = []
    index = 0
    while index < products.length
      result.push({ name: products[index].name, price: products[index].price, image_url: products[index].image_url, description: products[index].description })
      index += 1
    end
    render json: result
  end
end
