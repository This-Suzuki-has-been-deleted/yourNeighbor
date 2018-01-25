class RemoveEvaFromQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :eva, :string
  end
end
