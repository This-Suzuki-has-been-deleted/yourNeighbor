class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews, primary_key: "reviews_id" do |t|
      t.string :reviews_id                  # レビューID
      t.string :review_title	              # レビュータイトル
    	t.string :review_text               	# レビュー本文
    	t.string :review_eva, default: "good"	# 評価
    	t.date :review_date                  	# 追加日付
      t.timestamps
    end
  end
end
