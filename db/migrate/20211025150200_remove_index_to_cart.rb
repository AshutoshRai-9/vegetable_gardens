class RemoveIndexToCart < ActiveRecord::Migration[6.1]
  def change
    remove_column :carts, :cart_id

  end
end
