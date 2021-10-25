class AddIndexToCart < ActiveRecord::Migration[6.1]
  def change
    add_index :carts, :vegetable_id

  end
end
