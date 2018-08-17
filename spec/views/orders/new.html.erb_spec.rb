require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :total => 1,
      :tax => 1,
      :status => "MyString",
      :customer_id => 1,
      :cart_id => 1
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[total]"

      assert_select "input[name=?]", "order[tax]"

      assert_select "input[name=?]", "order[status]"

      assert_select "input[name=?]", "order[customer_id]"

      assert_select "input[name=?]", "order[cart_id]"
    end
  end
end
