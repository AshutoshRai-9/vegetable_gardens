class AddIndexToVegetables < ActiveRecord::Migration[6.1]
  def change
    add_index :vegetables, :category_id

  end
end
