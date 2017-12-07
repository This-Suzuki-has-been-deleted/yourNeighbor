class AddEmailToMap < ActiveRecord::Migration[5.1]
  def change
    add_column :maps, :email, :string
    add_reference :maps, :email, foreign_key: true
    add_reference :reviews, :point_id, :foreign_key: true
    add_reference :reviews, :email, :foreign_key: true
  end
end
