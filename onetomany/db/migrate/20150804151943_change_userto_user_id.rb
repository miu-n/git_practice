class ChangeUsertoUserId < ActiveRecord::Migration
  def change
    remove_column :bookmarks, :user, :string
    add_column :bookmarks, :user_id, :integer
  end
end
