class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params[:id])
    render :show

    # @products= Product.all
    # render template: "products/index"
  end

  def create
    @product = Product.create(
      id: params[:id],
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.title,
      price: params[:price] || @product.price,
      image_url: params[:image_url] || @product.image_url,
      description: params[:description] || @product.description,
    )
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def index
    @products = Product.all
    render :index
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Recipe successfully destroyed!" }
  end

  # def all_products
  #   products = Product.all
  #   result = []
  #   index = 0
  #   while index < products.length
  #     result.push({ name: products[index].name, price: products[index].price, image_url: products[index].image_url, description: products[index].description })
  #     index += 1
  #   end
  #   render json: result
  # end
end
