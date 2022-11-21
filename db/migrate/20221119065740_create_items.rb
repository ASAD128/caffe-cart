class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :tax_id
      t.integer :category_id
      t.integer :discount_id

      t.timestamps
    end
  end
end
