class MapsController < ApplicationController
  # 全ピンの情報を取得
  def index
    @maps = Map.all
    @hash = Gmaps4rails.build_markers(@maps) do |map, marker|
      marker.lat Map.map_lat
      marker.lng Map.map_lng
      # marker.infowindow map.map_name
      marker.infowindow render_to_string(partial: 'maps/infowindow', locals: { map: map })
    end
  end

  # 検索ワードと一致するピンを表示
  def search
    if request.post?
      word = params[:word]
      @map = Map.where("map_name like '%" + word + "%'")
    end
  end

  # GET /maps/1
  # GET /maps/1.json
  def show; end

  # GET /maps/new
  def new
    @map = Map.new
  end

  # GET /maps/1/edit
  def edit; end

  # POST /maps
  # POST /maps.json
  def create
    map = params.require(:map).permit(:map_name, :map_text, :map_lat, :map_lng).merge(email: current_user.email)
    check = Map.create(map)
    if check.save
      redirect_to maps_path, notice: '登録しました。'
    else
      redirect_to maps_path, notice: '登録に失敗しました。'
    end
  end

  def destroy
    @map = Map.find(params[:id])
    @map.destroy
    redirect_to maps_path,  notice: '削除しました。'
  end
end
