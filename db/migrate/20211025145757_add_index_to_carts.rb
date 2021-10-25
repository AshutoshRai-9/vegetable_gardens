class AddIndexToCarts < ActiveRecord::Migration[6.1]
  def change
    add_index :carts, :cart_id

  end
end
