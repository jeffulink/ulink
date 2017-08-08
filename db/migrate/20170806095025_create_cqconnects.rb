class CreateCqconnects < ActiveRecord::Migration[5.0]
  def change
    create_table :cqconnects do |t|
      t.integer :quotation_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
