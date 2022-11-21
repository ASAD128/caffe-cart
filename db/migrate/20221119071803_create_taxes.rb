class CreateTaxes < ActiveRecord::Migration[5.2]
  def change
    create_table :taxes do |t|
      t.string :code
      t.decimal :percentage

      t.timestamps
    end
  end
end
