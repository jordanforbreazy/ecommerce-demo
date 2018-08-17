class Customer < ApplicationRecord
	has_many :carts
	has_many :orders, through: :carts
	has_many :charges, through: :orders
end