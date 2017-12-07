class CreateMapsReports < ActiveRecord::Migration[5.1]
  def change
    create_table :maps_reports do |t|

      t.timestamps
    end
  end
end
