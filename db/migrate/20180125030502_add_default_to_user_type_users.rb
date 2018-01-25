class AddDefaultToUserTypeUsers < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :userType, 'normal'
  end
end
