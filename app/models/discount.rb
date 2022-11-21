class Discount < ApplicationRecord
  enum discount_type: [:free, :combo, :flat_rate, :zero]
end
