class AddReviewIdToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :review_id, :string
  end
end
