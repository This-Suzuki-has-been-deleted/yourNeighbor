class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :report_type
      t.string :report_id
      t.string :report_email
      t.timestamps
    end
  end
end
