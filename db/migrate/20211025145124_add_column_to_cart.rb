class AddColumnToCart < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :vegetable_id,           :string
  end
end
