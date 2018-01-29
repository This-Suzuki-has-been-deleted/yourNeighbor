class AddUsernameToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :username, :string
  end
end
