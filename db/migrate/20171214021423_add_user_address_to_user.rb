class AddUserAddressToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :userAddress, :String
  end
end
