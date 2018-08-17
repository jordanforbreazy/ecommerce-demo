class Cart < ApplicationRecord
	include AASM
	before_save(:calc_subtotal_and_qty)

	has_many :line_items

	private

	def calc_subtotal_and_qty
		self.subtotal = self.line_items.sum("line_items.price_per_on_create * line_items.qty")
		self.products_qty = self.line_items.size * self.line_items.qty
	end
end