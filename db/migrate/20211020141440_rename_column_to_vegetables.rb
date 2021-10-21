class RenameColumnToVegetables < ActiveRecord::Migration[6.1]
  def change
    rename_column :vegetables, :category, :name
  end
end
