class ChangeTypeColumnSchools < ActiveRecord::Migration[6.0]
  def change
    rename_column :schools, :longtitude, :longitude
  end
end
