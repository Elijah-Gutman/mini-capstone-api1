class AddQuantityToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :Quantity, :integer
  end
end
