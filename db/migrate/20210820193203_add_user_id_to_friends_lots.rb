class AddUserIdToFriendsLots < ActiveRecord::Migration[6.1]
  def change
    add_column :friends_lots, :user_id, :integer
    add_index :friends_lots, :user_id
  end
end
