class RemoveUserRefFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :users_id
  end
end
