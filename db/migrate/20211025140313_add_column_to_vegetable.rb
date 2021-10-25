class AddColumnToVegetable < ActiveRecord::Migration[6.1]
  def change
    add_column :vegetables, :cart_id,           :string

  end
end
