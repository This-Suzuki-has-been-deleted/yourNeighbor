class AddColumnToReport < ActiveRecord::Migration[5.1]
  def change

    add_column :reports, :report_text, :string
  end
end
