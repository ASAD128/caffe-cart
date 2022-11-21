class CreatePaymentMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_methods do |t|
      t.integer :payment_type
      t.timestamps
    end
  end
end
