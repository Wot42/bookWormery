class AddCommentToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :comment, :text
  end
end
