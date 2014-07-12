class CreateFightings < ActiveRecord::Migration
  def change
    create_table :fightings do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
