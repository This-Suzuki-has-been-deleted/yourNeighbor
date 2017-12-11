class CreateReviewReports < ActiveRecord::Migration[5.1]
  def change
    create_table :review_reports do |t|

      t.timestamps
    end
  end
end
