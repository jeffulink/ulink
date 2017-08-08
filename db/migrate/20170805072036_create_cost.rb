class CreateCost < ActiveRecord::Migration[5.0]
  def change
    create_table :costs do |t|
      t.string :pname
      t.integer :salescost
      t.integer :ulikcost
    end
  end
end
