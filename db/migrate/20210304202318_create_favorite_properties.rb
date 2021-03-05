class CreateFavoriteProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_properties do |t|
      t.string :property_id
      t.string :user_id
    end
  end
end
