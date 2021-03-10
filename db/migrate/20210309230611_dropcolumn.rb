class Dropcolumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :schools, :languages
  end
end
