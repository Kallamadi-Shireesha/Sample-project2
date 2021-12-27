class Order < ActiveRecord::Base
  has_many :order_items
  belongs_to :user, touch: true

  

 
  def self.get_users_active_order_ids(user_id)
    where(user_id: user_id).where(order_status: "queue").ids
  end

  def self.get_users_completed_order_ids(user_id)
    all.where(user_id: user_id).where(order_status: "completed").ids
  end
  
  # ? Check if orders_items exist in active_menu
  def self.check_if_in_active_menu(id)
    is_order_still_valid = true
    list = []
    # * Grabbing the ActiveMenu at the moment of placing the Order
    active_menu_id = ActiveMenu.first.active_menu
    # * Creating a List of OrderItems based on OrderId:
    Order.find(id).order_items.each { |it| list.push(it.menu_item_id) }
    # * ForEach OrderItems it checks if the Item Exists in the ActiveMenu
    list.each do |id|
      if MenuItem.find(id).menu_id != active_menu_id
        # * if the Item is not in ActiveMenu returns False and Hence Cancels Order
        is_order_still_valid = false
      end
    end
    return is_order_still_valid
  end


 
end
