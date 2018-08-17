class CreateViewlessTables < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.boolean :paid
      t.integer :amount
      t.string :currency
      t.boolean :refunded
      t.integer :order_id
      t.timestamps
    end
      
    create_table :carts do |t|
      t.integer :subtotal
      t.string :status
      t.integer :products_qty
      t.integer :customer_id
      t.timestamps
    end

    create_table :line_items do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :qty
      t.integer :price_per_on_create
      t.timestamps
    end

    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :qty
      t.timestamps
    end

    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end
  end
end
