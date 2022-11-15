class RemoveUserIdFromPosts < ActiveRecord::Migration[7.0]
  def up
    remove_column :posts, :user_id
  end
end
