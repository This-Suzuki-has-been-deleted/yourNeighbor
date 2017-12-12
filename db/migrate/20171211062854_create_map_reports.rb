class CreateMapReports < ActiveRecord::Migration[5.1]
  def change
    create_table :map_reports do |t|
      t.string :map_report_text
      # ここから外部キー
      t.string :maps_id
      t.timestamps
    end
  end
end
