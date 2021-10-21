class CreateVegetables < ActiveRecord::Migration[6.1]
  def change
    create_table :vegetables do |t|
      t.string :product
      t.string :category
      t.string :price
      t.timestamps
    end
  end
end
