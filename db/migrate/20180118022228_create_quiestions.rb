class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :text
      t.string :eva
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.string :users_id

      t.timestamps
    end
  end
end
