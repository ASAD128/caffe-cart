class Item < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :tax, optional: true
  belongs_to :discount, optional: true
  has_one_attached :image
end
