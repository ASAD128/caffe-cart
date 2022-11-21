class Item < ApplicationRecord
  belongs_to :category
  belongs_to :tax
  belongs_to :discount
  has_one_attached :image
end
