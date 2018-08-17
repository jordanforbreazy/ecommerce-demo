require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :total => 2,
        :tax => 3,
        :status => "Status",
        :customer_id => 4,
        :cart_id => 5
      ),
      Order.create!(
        :total => 2,
        :tax => 3,
        :status => "Status",
        :customer_id => 4,
        :cart_id => 5
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
