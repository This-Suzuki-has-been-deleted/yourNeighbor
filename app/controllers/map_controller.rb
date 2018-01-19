class MapController < ApplicationController
  # GET /maps
  # GET /maps.json
  def index
    @maps = Map.all
  end

  # GET /maps/1
  # GET /maps/1.json
  def show
    @map = Map.find_by(id: params[:id])
    @latitude = @map.latitude

    @longitude = @map.longitude

    @address = @map.address
  end

  # GET /maps/new
  def new
    @map = Map.new
  end

  #検索ワードと一致するピンを表示
  def search
    if request.post? then
      word = params[:word]
      @ping = map.where("map_name like '%" + word + "%'")
    end
  end

  #登録
  # def new
  #   if request.post? then
  #     map_data = params[:map_data]
  #     map.create(maps_id: map.count.to_i + 1, map_name: map_data[1], map_text: map_data[2], map_lat: map_data[3], map_lng: map_data[4], map_date: Date.today.to_time)
  #   end
  # end

  #編集
  def edit
    if request.post? then
      map_id = params[:map_id]
      map.update(maps_id: map_id)
    end
  end

  #削除
  def delete
    if request.post? then
      map_id = params[:map_id]
      map.destroy_all(maps_id: map_id)
    end
  end

end
