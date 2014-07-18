class AddSucceedToFightingRecords < ActiveRecord::Migration
  def change
    add_column :fighting_records, :succeed, :boolean
  end
end
