class Product < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :description, length: { minimum: 1 }
  validates :description, length: { maximum: 5000 }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  TAX_RATE = 0.09

  def is_discounted?
    price <= 10
  end

  def tax
    price * TAX_RATE
  end

  def total
    price + tax
  end
end
