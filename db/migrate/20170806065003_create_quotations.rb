class CreateQuotations < ActiveRecord::Migration[5.0]
  def change
    create_table :quotations do |t|
      t.string :quotaionname
      t.integer :quotationid

      t.timestamps
    end
  end
end
