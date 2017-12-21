class MapController < ActionController

  #全ピンの情報を取得
  def get_ping
    @maps = map.all
  end

  #検索ワードと一致するピンを表示
  def get_search_ping
    if request.post? then
      word = params[:word]
      @maps = map.where("map_name like '%" + word + "%'")
    end
  end

  #登録
  def regist_ping
    if request.post? then
      map_data = params[:map_data]
      map.create(maps_id: map.count.to_i + 1, map_name: map_data[1], map_text: map_data[2], map_lat: map_data[3], map_lng: map_data[4], map_date: Date.today.to_time)
    end
  end

  #編集
  def edit_ping
    if request.post? then
      map_id = params[:map_id]
      map.update(maps_id: map_id)
    end
  end

  #削除
  def delete_ping
    if request.post? then
      map_id = params[:map_id]
      map.destroy_all(maps_id: map_id)
    end
  end

end
