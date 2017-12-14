class AddUserAgeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :userAge, :String
  end
end
