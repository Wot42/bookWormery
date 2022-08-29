class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :condition
      t.float :price
      t.string :genre
      t.integer :ISBN
      t.text :book_pic
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
