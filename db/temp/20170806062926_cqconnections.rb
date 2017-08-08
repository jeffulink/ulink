class Cqconnections < ActiveRecord::Migration[5.0]
  def change
     t.integer :customer_id
     t.integer :quotation_id
  end
end
