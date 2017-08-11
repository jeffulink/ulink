class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :contact
      t.string :phone
      t.string :address
      t.integer :area_id
      t.integer :sales_id
      t.integer :ctcategory_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
