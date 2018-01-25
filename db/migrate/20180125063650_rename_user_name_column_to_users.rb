class RenameUserNameColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :userName, :username
  end
end
