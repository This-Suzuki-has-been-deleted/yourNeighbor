class AddReviewTitleToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :review_title, :string
  end
end
