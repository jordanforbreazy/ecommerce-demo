require 'rails_helper'

RSpec.describe Cart, type: :model do
	FactoryBot.find_definitions 
	
	describe "locked price once item is added" do
		it "does not change the price of the cart's items" do
			cart = create(:cart)
			cart.customer = create(:customer)
			line_item = build(:line_item)
			line_item.product = create(:product)
			cart.line_items << line_item
			cart.save!
			pre_edit_total = cart.subtotal == 0 ? 1 : cart.subtotal
			line_item.product.update_attribute(:price, 30000)
			cart.save!
			expect(cart.subtotal).to eq pre_edit_total
		end
	end
end
