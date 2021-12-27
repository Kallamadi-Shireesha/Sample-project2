class OrderSerializer < ActiveModel::Serializer
  has_many :order_items
  belongs_to :user
  attributes :id, :user_id, :order_status
end
