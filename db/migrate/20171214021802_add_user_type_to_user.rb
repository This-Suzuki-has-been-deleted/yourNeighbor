class AddUserTypeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :userType, :String
  end
end
