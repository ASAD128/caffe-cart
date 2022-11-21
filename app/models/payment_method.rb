class PaymentMethod < ApplicationRecord
  enum payment_type: [:card, :online_banking, :cash]
end
