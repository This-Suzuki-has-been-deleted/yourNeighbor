class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews, primary_key: "reviews_id" do |t|
      t.string :reviews_id                  # レビューID
      t.string :review_title	              # レビュータイトル
    	t.string :review_text               	# レビュー本文
    	t.string :review_eva, default: "good"	# 評価
    	t.date :review_date                  	# 追加日付
      # ここから外部キー
      t.string :email_id                    # 外部キー：Users
      t.string :maps_id                     # 外部キー：Maps

    end
  end
end
