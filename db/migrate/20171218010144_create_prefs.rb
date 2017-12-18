class CreatePrefs < ActiveRecord::Migration[5.1]
  def change
    create_table :prefs do |t|
      t.string :pref_name
      t.string :pref_lat
      t.string :pref_lng
      t.timestamps
    end
  end
end
