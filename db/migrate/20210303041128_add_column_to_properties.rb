class AddColumnToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :bedrooms, :string
    add_column :properties, :bathrooms, :string
    add_column :properties, :user_id, :integer

  end
end
