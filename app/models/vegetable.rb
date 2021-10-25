class Vegetable < ApplicationRecord
    belongs_to :category
    belongs_to :carts
end
