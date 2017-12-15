class AddUserNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :userName, :String
  end
end
