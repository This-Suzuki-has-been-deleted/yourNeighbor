class AddUserFullNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :userFullName, :String
  end
end
