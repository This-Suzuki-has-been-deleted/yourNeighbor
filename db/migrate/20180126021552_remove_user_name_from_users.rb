class RemoveUserNameFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :userName, :string
  end
end
