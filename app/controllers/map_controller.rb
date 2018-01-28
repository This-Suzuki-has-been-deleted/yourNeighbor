# maps
class MapController < ApplicationController
  # GET /maps
  # GET /maps.json
  def index
    @maps = Map.all
    @hash = Gmaps4rails.build_markers(@maps) do |map, marker|
      # marker.lat map.map_lat
      # marker.lng map.map_lng
      # marker.infowindow mappu.map_name
      marker.infowindow render_to_string(partial: "maps/infowindow", locals: { map: map })
    end
  end

  # search
  def search
    if request.post?
      word = params[:word]
      @map = map.where("map_name like '%" + word + "%'")
    else
      format.html { redirect_to @map, notice: '検索に失敗。' }
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
    map = params.require(:map).permit(:map_name, :map_lat, :map_lng)
    Map.create(map)
  end

  # PATCH/PUT /maps/1
  # PATCH/PUT /maps/1.json
  def update
    respond_to do |format|
      if @map.update(map_params)
        format.html { redirect_to @map, notice: '地点を編集しました。' }
        format.json { render :show, status: :ok, location: @map }
      else
        format.html { render :edit }
        format.json { render json: @map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maps/1
  # DELETE /maps/1.json
  def destroy
    @map.destroy
    respond_to do |format|
      format.html { redirect_to maps_url, notice: '地点を削除しました。' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_map
    @map = map.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def map_params
    params.require(:map).permit(:maps_id, :map_name, :map_lat, :map_lng, :map_date)
  end
end
