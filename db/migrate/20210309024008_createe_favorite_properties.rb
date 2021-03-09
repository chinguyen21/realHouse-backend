class CreateeFavoriteProperties < ActiveRecord::Migration[6.0]
  def change
      create_table :favorite_properties do |t|
      t.integer :property_id
      t.integer :user_id
    end
  end
end
