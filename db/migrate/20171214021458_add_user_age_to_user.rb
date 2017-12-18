class AddUserAgeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :userAge, :string
  end
end
