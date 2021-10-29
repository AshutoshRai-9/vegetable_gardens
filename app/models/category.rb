class Category < ApplicationRecord
    has_many :vegetables
    #has_and_belongs_to_many :vegetables
   # belongs_to :vegetable
end
