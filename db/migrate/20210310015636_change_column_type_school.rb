class ChangeColumnTypeSchool < ActiveRecord::Migration[6.0]
  def change
    change_column :schools, :longitude, 'float USING CAST(longitude AS float)'
    change_column :schools, :latitude, 'float USING CAST(latitude AS float)'
  end
end
