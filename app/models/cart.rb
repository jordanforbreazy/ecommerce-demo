class Cart < ApplicationRecord
	before_commit :calc_subtotal_and_qty

	has_many :line_items
	belongs_to :customer

	def calc_subtotal_and_qty
		assign_attributes(subtotal: line_items.sum("line_items.price_per_on_create * line_items.qty"))
		assign_attributes(products_qty: line_items.sum(:qty))
		save!
	end
end