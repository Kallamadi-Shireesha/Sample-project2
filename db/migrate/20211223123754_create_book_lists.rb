class CreateBookLists < ActiveRecord::Migration[6.1]
  def change
    create_table :book_lists do |t|
      t.integer :book_id
      t.string :name
      t.string :description
      t.references :books, null: false, foreign_key: true

      t.timestamps
    end
  end
end
