class RenameQuiestionsToQuestion < ActiveRecord::Migration[5.1]
  def change
    rename_table :quiestions, :questions
  end
end
