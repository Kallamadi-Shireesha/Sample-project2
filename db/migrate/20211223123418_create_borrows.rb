class CreateBorrows < ActiveRecord::Migration[6.1]
  def change
    create_table :borrows do |t|
      t.integer :user_id
      t.string :status
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
