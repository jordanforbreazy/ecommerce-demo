require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :total => 1,
      :tax => 1,
      :status => "MyString",
      :customer_id => 1,
      :cart_id => 1
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[total]"

      assert_select "input[name=?]", "order[tax]"

      assert_select "input[name=?]", "order[status]"

      assert_select "input[name=?]", "order[customer_id]"

      assert_select "input[name=?]", "order[cart_id]"
    end
  end
end
