class Addcolumntoproperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :move_date, :string
    add_column :properties, :lease_length, :integer
    add_column :properties, :refrigerator, :boolean
    add_column :properties, :balcony, :boolean
    add_column :properties, :heating, :boolean
    add_column :properties, :washer, :boolean
    add_column :properties, :elevator, :boolean
    add_column :properties, :parking, :boolean
    add_column :properties, :fitness, :boolean
    add_column :properties, :dishwasher, :boolean
    add_column :properties, :wheelchair, :boolean
    add_column :properties, :camera, :boolean
    add_column :properties, :digital_lock, :boolean
    add_column :properties, :zipcode, :string
  end
end
