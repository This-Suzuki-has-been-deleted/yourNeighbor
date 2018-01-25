class AddColumnEmails < ActiveRecord::Migration[5.1]
  def change
    add_column :Columns,:email,:string
  end
end
