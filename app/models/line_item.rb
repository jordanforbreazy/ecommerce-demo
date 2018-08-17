class LineItem < ApplicationRecord
	belongs_to :product
	belongs_to :cart
	validates_presence_of :product
	validates_presence_of :cart
	before_save :save_current_product_price

	private

	def save_current_product_price
		self.price_per_on_create = self.product.price
	end
end