class ChangePropertyColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :properties, :longtitude, :longitude
  end
end
