class AddUserNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :userName, :string
  end
end
