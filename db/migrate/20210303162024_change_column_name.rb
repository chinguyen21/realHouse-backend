class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :properties, :sqrt, :sqft
  end
end
