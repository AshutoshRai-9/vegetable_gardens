class Vegetable < ApplicationRecord
   mount_uploader :image, ImageUploader
   belongs_to :category
    has_many :carts
   # has_many :categories
end
