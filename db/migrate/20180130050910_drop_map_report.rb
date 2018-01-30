class DropMapReport < ActiveRecord::Migration[5.1]
  def change
    drop_table :map_reports
  end
end
