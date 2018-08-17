class Order < ApplicationRecord
	include AASM
	before_save(:calc_total_and_tax)

	has_many :charges
	belongs_to :customer
	belongs_to :cart

	private

	def calc_total_and_tax
		subtotal = self.cart.joins(:line_items).sum("line_items.price_per_on_create * line_items.qty")
		self.tax = subtotal * 0.08875
		self.total = subtotal + self.tax
	end
end
