class BorrowSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :status
  has_one :users
end
