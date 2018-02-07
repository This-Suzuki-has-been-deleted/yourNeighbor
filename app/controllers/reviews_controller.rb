class ReviewsController < ApplicationController
  before_action only: %i[show edit update destroy auth_user]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @map = Map.find(params[:id])
    @reviews = @map.reviews

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @map }
    end
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit; end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(params[:review].permit(:maps_id, :review_title, :review_text, :review_eva))
    @review.save
    redirect_to maps_path
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])
    review = params.require(:review).permit(:maps_id, :review_title, :review_text, :review_eva)
    Review.where('id = ?', @review.id).update(review)
    redirect_to maps_show_path(params[:review]['maps_id']), notice: '更新しました。'
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.html { redirect_to maps_path, notice: 'レビューを削除しました。' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def review_params
    params.require(:review).permit(:review_title, :review_text, :review_eva, :review_date, :maps_id)
  end
end
