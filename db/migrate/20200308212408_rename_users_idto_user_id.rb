class RenameUsersIdtoUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :garments, :users_id, :user_id
  end
end
