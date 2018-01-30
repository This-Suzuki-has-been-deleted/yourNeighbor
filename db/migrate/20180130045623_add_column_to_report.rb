class AddColumnToReport < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :report_type, :string
    add_column :reports, :report_id, :string
    add_column :reports, :report_email, :string
  end
end
