class AddUsernameToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :username, :string
  end
end
