require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :total => 2,
      :tax => 3,
      :status => "Status",
      :customer_id => 4,
      :cart_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
