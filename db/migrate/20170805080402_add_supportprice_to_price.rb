class AddSupportpriceToPrice < ActiveRecord::Migration[5.0]
  def change
    add_column :prices, :supportprice, :integer
  end
end
