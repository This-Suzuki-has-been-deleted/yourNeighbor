class AddReviewTextToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :review_text, :string
  end
end
