class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  def index
    @orders = Order.all.includes(:charges, :customer).includes(cart: {line_items: :product})
  end

  private
    def order_params
      params.require(:order).permit(:total, :tax, :status, :customer_id, :cart_id)
    end
end
