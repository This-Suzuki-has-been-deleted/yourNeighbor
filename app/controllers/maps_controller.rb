class MapsController < ApplicationController

  #全ピンの情報を取得
  def index
    @ping = maps.all
  end

  #検索ワードと一致するピンを表示
  def search
    if request.post? then
      word = params[:word]
      @ping = maps.where("map_name like '%" + word + "%'")
    end
  end

  #登録
  def new
    if request.post? then
      map_data = params[:map_data]
      maps.create(maps_id: map.count.to_i + 1, map_name: map_data[1], map_text: map_data[2], map_lat: map_data[3], map_lng: map_data[4], map_date: Date.today.to_time)
    end
  end

  #編集
  def edit
    if request.post? then
      map_id = params[:map_id]
      maps.update(maps_id: map_id)
    end
  end

  #削除
  def delete
    if request.post? then
      map_id = params[:map_id]
      maps.destroy_all(maps_id: map_id)
    end
  end

end
