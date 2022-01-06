class Addcolumntovegetables < ActiveRecord::Migration[6.1]
  def change
    add_column :vegetables, :image,           :string

  end
end
