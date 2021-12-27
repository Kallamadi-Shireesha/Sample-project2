json.extract! book_list, :id, :book_id, :name, :description, :books_id, :created_at, :updated_at
json.url book_list_url(book_list, format: :json)
