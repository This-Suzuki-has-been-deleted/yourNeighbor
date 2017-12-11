class CreateMapReports < ActiveRecord::Migration[5.1]
  def change
    create_table :map_reports do |t|

      t.timestamps
    end
  end
end
