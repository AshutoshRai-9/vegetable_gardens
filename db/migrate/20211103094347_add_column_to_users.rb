class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :address,           :string
    add_column :users, :username,           :string

  end
end
