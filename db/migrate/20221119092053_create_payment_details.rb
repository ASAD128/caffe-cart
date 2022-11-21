class CreatePaymentDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_details do |t|
      t.integer :order_id
      t.integer :status
      t.integer :payment_method_id
      t.decimal :amount
      t.timestamps
    end
  end
end
