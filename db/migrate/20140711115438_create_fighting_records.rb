class CreateFightingRecords < ActiveRecord::Migration
  def change
    create_table :fighting_records do |t|
      t.datetime :dt
      t.string :notes
      t.references :fighting

      t.timestamps
    end
  end
end
