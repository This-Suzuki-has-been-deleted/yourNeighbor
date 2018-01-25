class AddEmailToColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :columns, :email, :string
  end
end
