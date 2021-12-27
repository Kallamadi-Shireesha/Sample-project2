class OrderItemSerializer < ActiveModel::Serializer
  belongs_to :order
  belongs_to :menu_item
  attributes :id, :order_id, :menu_item_id, :menu_item_name
end
