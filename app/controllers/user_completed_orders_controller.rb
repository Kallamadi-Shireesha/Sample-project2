class UserCompletedOrdersController < ApplicationController
  @order_ids
  @order_items
  def index
    @order_ids = Order.get_users_completed_order_ids(current_user.id)
   # @order_items = Order.get_users_completed_order_items(current_user.id)
    flash.now[:success]=@order_items
  end
end
