class AddUserTypeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :userType, :string
  end
end
