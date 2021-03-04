class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :state_code, :string
    add_column :properties, :price, :string
    add_column :properties, :list_date, :string
    add_column :properties, :last_update, :string
  end
end
