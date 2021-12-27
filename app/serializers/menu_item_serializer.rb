class MenuItemSerializer < ActiveModel::Serializer
  belongs_to :menu
  attributes :id,:menu_id, :name, :description
end
