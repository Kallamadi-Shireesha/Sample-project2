class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :menu_item, touch: true


  

  # ? Create Cart
  def self.create_from_cart(
    order_id,
    menu_item_id,
    menu_item_name
   
  )
    item_existing_in_cart = OrderItem.where(order_id: order_id).find_by(menu_item_id: menu_item_id)

    # * If Does not OrderItem Exists
    # * Add a Fresh new OrderItem in the cart
    if item_existing_in_cart == nil
      OrderItem.create(
        order_id: order_id,
        menu_item_id: menu_item_id,
        menu_item_name: menu_item_name
        
      )
      # * If  OrderItem Exists
      # * Update the Count of item
    
  end
end
  
  def self.remove_from_cart(id)
    OrderItem.find(id).destroy
  end
end
