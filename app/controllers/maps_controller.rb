class MapsController < ApplicationController
  before_action :set_map, only: %i[show edit update destroy auth_user]

  # 全ピンの情報を取得
  def index
    # @maps = Map.all
    @keyword = Map.ransack(params[:q]) #:q(query)は検索窓に入力された値をパラメータで取得
    @maps = @keyword.result

    @hash = Gmaps4rails.build_markers(@maps) do |map, marker|
      marker.lat map.map_lat
      marker.lng map.map_lng
      marker.infowindow render_to_string(partial: 'maps/infowindow', locals: { map: map })
    end
  end

  # GET /maps/1
  # GET /maps/1.json
  def show
    @map = Map.find(params[:id])
    @newreview = Review.new(:maps_id => params[:id])
    @reviews = Review.where(maps_id: params[:id])
    @review = Review.all
  end

  # GET /maps/new
  def new
    @map = Map.new
  end

  # GET /maps/1/edit
  def edit; end

  # POST /maps
  # POST /maps.json
  def create
    @map = Map.new(map_params)
    respond_to do |format|
      if @map.save
        format.html { redirect_to @map, notice: 'Map was successfully created.' }
        format.json { render :show, status: :created, location: @map }
      else
        format.html { render :new }
        format.json { render json: @map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maps/1
  # PATCH/PUT /maps/1.json
  def update
    @map = Map.find(params[:id])
    respond_to do |format|
      if @map.update(map_params)
        format.html { redirect_to @map, notice: 'Map was successfully updated.' }
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
    @map = Map.find(params[:id])
    @map.destroy
    respond_to do |format|
      format.html { redirect_to maps_path, notice: 'Map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # URL直打ちによる不正なアクセスに対応
  def auth_user
    map = Map.find(params[:id])
    if current_user.user_type != "admin" && current_user.email != map.email
      flash[:notice] = "権限がありません"
      redirect_to maps_path
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_map
    @map = Map.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def map_params
    params.require(:map).permit(:map_name, :map_text, :map_lat, :map_lng).merge(email: current_user.email)
  end
end
