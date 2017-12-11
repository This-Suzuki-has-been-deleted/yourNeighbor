class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews, primary_key: 'reviews_id' 'email' 'maps_id', id: false do |t|
      t.integer :reviews_id, auto_increment # レビューID
      t.string :review_title	              # レビュータイトル
    	t.string :review_text               	# レビュー本文
    	t.string :review_eva, default: "good"	# 評価
    	t.date :review_date                  	# 追加日付
      # ここから外部キー
      t.string :email                       # 外部キー：Users
      t.string :maps_id                     # 外部キー：Maps
    end
    create_table :map_report do |t|
      t.string :map_report_text
      # ここから外部キー
      t.string :maps_id
    end
    create_table :review_report do |t|
      t.string :review_report_text
      # ここから外部キー
      t.string :reviews_id
    end
  end
end
