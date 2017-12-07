class AddReviewDateToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :review_date, :date

  end
end
