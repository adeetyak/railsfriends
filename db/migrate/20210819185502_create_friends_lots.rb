class CreateFriendsLots < ActiveRecord::Migration[6.1]
  def change
    create_table :friends_lots do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.string :instagram

      t.timestamps
    end
  end
end
