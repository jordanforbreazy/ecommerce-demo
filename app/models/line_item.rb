class LineItem < ApplicationRecord
	belongs_to :product
	belongs_to :cart
	after_create :save_current_product_price
	after_update :update_cart_price

	private

	def save_current_product_price
		assign_attributes(price_per_on_create: product.price)
		save!
	end

	def update_cart_price
		return if cart.status == 'paid'
		cart.calc_subtotal_and_qty
	end
end