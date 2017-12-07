class AddEmailToMap < ActiveRecord::Migration[5.1]
  def change
    add_column :maps, :email, :string
  end
end
