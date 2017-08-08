class AddNoteToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :note, :string
  end
end
