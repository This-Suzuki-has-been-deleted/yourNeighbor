class CreateMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :maps do |t|
      t.string :point_id
      t.string :point_name
      t.string :point_lat
      t.string :point_lng
      t.time :point_date

      t.timestamps
    end
  end
end
