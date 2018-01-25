class AddQuestionEmails < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :email, :string
  end
end
