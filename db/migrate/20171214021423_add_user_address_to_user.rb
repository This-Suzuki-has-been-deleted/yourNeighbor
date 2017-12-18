class AddUserAddressToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :userAddress, :string
  end
end
