class DropReviewReport < ActiveRecord::Migration[5.1]
  def change
    drop_table :review_reports
  end
end
