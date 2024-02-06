class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :date
      t.integer :total
      t.integer :status

      t.timestamps
    end
  end
end
