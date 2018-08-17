class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :total
      t.integer :tax
      t.string :status
      t.integer :customer_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
