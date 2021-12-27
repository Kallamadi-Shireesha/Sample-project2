class MenuSerializer < ActiveModel::Serializer
  has_many :menu_items
  attributes :id, :name
end
