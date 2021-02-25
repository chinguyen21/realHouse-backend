class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :prop_type
      t.integer :sqrt
      t.integer :year_built
      t.string :full_address
      t.string :county
      t.string :city
      t.string :state
      t.integer :latitude
      t.integer :longtitude
      t.string :neighborhoods
      t.boolean :allow_pets
      t.string :prop_status
      t.string :owner_contact

      t.timestamps
    end
  end
end
