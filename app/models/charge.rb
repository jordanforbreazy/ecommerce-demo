class Charge < ApplicationRecord
	before_save(:calc_amount)

	belongs_to :order

	private

	def calc_amount
		self.amount = self.order.total
	end
end