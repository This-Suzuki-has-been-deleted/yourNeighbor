class AddUserFullNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :userFullName, :String
  end
end
