class RemoveColumnToVegetables < ActiveRecord::Migration[6.1]
  def change
    remove_column :vegetables, :cart_id

  end
end
