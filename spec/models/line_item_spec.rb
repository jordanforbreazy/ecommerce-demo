require 'rails_helper'

RSpec.describe LineItem, type: :model do
	
	describe "quantity changes update cart if not yet paid" do
		it "updates cart subtotal and products_qty" do
			cart = create(:cart, status: "created")
			cart.customer = create(:customer)
			line_item = build(:line_item)
			line_item.product = create(:product)
			cart.line_items << line_item
			cart.save!
			new_qty = 8
			subtotal = cart.subtotal
			line_item.update_attribute(:qty, new_qty)
			cart.reload
			expect(cart.products_qty).to eq new_qty
			expect(cart.subtotal).to eq subtotal * new_qty
		end
	end
end
