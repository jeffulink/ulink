class AddSupportpriceToPrice < ActiveRecord::Migration[5.0]
  def change
    add_column :price, :supportprice, :integer
  end
end
