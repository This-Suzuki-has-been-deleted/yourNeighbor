class CreateColumns < ActiveRecord::Migration[5.1]
  def change
    create_table :columns do |t|
      t.string :title
      t.string :text, :limit => 1000

      t.timestamps
    end
  end
end
