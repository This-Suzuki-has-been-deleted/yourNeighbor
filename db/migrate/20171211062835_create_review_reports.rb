class CreateReviewReports < ActiveRecord::Migration[5.1]
  def change
    create_table :review_reports do |t|
      t.string :review_report_text
      # ここから外部キー
      t.string :reviews_id
      t.timestamps
    end
  end
end
