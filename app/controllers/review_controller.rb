class ReviewController < ApplicationController

  # map_idからレビュー全件取得
  def search map_id
    @reviews = Review.where(maps_id: map_id)
  end

  # レビュー登録
  # review_dataにはタイトル、本文、評価を入れる
  # user_dataにはmap_idとemailを入れる
  def new
    review_data = params[:review_data]
    Review.create(reviews_id: review.count.to_i + 1, review_title: review_data[1], review_text: review_data[2], review_eva: review_data[3], review_date: Date.today.to_time)
  end

  # レビュー削除
  # delete_dataにはmap_idとemailを入れる
  def delete
    delete_data = params[:delete_data]
    Review.delete(map_id: delete_data[1], email: delete_data[2])
  end
end
