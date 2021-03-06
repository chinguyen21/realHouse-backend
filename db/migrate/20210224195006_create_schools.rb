class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :website
      t.string :street
      t.string :city
      t.string :state
      t.string :levels
      t.string :languages
      t.string :latitude
      t.string :longtitude

      t.timestamps
    end
  end
end
