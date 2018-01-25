class AddAnswerEmails < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :email, :string
  end
end
