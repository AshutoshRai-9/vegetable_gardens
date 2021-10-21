class Addcolumnvegetables < ActiveRecord::Migration[6.1]
  def change
    add_column :vegetables, :category_id,           :string

  end
end
