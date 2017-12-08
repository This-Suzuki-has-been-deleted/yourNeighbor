class CreateMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :maps, primary_key: "maps_id" do |t|
      t.string :maps_id               # ID
      t.string :map_name              # 場所名
      t.string :map_lat               # 緯度
      t.string :map_lng               # 経度
      t.date :map_date                # 追加日付
      t.timestamps
    end
  end
end
