class CreateProduct < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.integer :set
      t.string :unit
    end
  end
end
