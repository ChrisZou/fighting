class AddDescriptionToFightings < ActiveRecord::Migration
  def change
    add_column :fightings, :description, :string
  end
end
