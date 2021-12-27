class BookListSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :name, :description
  has_one :books
end
