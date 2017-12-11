class MapController < ApplicationController

  #全ピンの情報を取得
  def get_ping
    @ping = map.all
  end

  #検索ワードと一致するピンを表示
  def get_search_ping word
    @ping = map.where(map_name: /.*#{word}.*/)
  end

  #登録
  def regist_ping map_data
    map.create(maps_id: user.count.to_i + 1, map_name: map_data[1], map_lat: map_data[2], map_lng: map_data[3], map_date: Date.today.to_time)
  end

  #削除
  def delete_ping map_name
    map.destroy_all(map_name: map_name)
  end
end
