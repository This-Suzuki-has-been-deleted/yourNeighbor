class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews, id=true do |t|
      t.string :review_title	#レビュータイトル
    	t.string :review_text	#レビュー本文
    	t.string :review_eva	#評価
    	t.date :review_date	#追加日付
      t.timestamps
    end
  end
end
