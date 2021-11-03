class AddColumnsToCarts < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :vegetable_price,           :string


  end
end
