class AddProductidToPrice < ActiveRecord::Migration[5.0]
  def change
    add_column :prices, :product_id, :integer
  end
end
