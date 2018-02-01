class RenameUserTypeColumnToUserName < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :userType, :user_type
  end
end
