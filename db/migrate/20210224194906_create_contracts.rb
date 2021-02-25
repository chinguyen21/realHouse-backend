class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.integer :user_id
      t.integer :property_id
      t.string :listing_date
      t.string :update_date

      t.timestamps
    end
  end
end
