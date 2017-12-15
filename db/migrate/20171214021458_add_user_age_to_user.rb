class AddUserAgeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :userAge, :String
  end
end
