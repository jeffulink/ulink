class CreateCustomerTable < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :area
      t.string :category
    end
  end
end
