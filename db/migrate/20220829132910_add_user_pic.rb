class AddUserPic < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :profile_picture, :text
  end
end