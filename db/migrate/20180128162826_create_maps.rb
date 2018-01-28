class CreateMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :maps do |t|
            t.string :map_name                                # 場所名
            t.string :map_text                                # 場所詳細
            t.float :map_lat                                 # 緯度
            t.float :map_lng                                 # 経度
            t.string :email
      t.timestamps
    end
  end
end
