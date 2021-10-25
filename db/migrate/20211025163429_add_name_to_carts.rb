class AddNameToCarts < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :vegetable_name,           :string

  end
end
