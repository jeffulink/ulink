class CreateManyToMany < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :name
    end

    create_table :patients do |t|
      t.string :name
    end

    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :patient_id
    end
  end
end
