class MapController < ApplicationController

  #全ピンの情報を取得
  def index
    @maps = Map.all
    @maps = Map.search(params[:search])
  end

  #検索ワードと一致する地点を表示
  def search
    if request.post? then
      word = params[:word]
      @maps = map.where("map_name like '%" + word + "%'")
    end
  end

  #詳細
  def show
    map_id = params[:maps_id]
  end

  #登録
  def new
    if request.post? then
      map_data = params[:map_data]
      map.create(maps_id: map.count.to_i + 1, map_name: map_data[1], map_lat: map_data[2], map_lng: map_data[3], map_date: Date.today.to_time)
      if check.save
        redirect_to maps_path, notice: '登録しました。'
      else
        redirect_to maps_path, notice: '登録に失敗しました。'
      end
    end
  end

  #編集
  def edit
    if request.post? then
      map_id = params[:maps_id]
      map.update(maps_id: map_id)
      if check.save
        redirect_to maps_path, notice: '更新しました。'
      else
        redirect_to maps_path, notice: '更新に失敗しました。'
      end
    end
  end

  #削除
  def delete
    if request.post? then
      map_id = params[:map_id]
      map.destroy_all(maps_id: map_id)
      flash[:success] = "Marker deleted"
      redirect_to maps_path
    end
  end

end
