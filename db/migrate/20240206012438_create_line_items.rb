class CreateLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :line_items do |t|
      t.references :product, null: false, foreign_key: true
      t.references :cart, null: true, foreign_key: true
      t.references :order, null: true, foreign_key: true
      t.decimal :price
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
