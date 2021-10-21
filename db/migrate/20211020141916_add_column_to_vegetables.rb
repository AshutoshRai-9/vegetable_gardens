class AddColumnToVegetables < ActiveRecord::Migration[6.1]
  def change
    add_column :vegetables, :category_name,           :string

  end
end
