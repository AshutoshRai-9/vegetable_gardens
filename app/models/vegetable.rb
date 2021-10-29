class Vegetable < ApplicationRecord
   belongs_to :category
    has_many :carts
   # has_many :categories
end
