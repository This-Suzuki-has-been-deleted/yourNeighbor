class AddUserIconToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :userIcon, :binary
  end
end
