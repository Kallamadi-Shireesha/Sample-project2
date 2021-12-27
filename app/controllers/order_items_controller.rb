class OrderItemsController < ApplicationController
  def index  
    @order_item=OrderItem.all
    render :json=> @order_item
    
    
  end
  def create
    OrderItem.create_from_cart(
      params[:order_id],
      params[:menu_item_id],
      params[:menu_item_name]
    )
    
    redirect_to orders_path
  end

  

  def destroy()
    OrderItem.remove_from_cart(params[:id])
    redirect_to orders_path
  end
end
