class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :ptroduct
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
