class CreateNearStations < ActiveRecord::Migration[5.2]
  def change
    create_table :near_stations do |t|
      t.string :track_name
      t.string :station_name
      t.integer :minute_walk
      t.timestamps
    end
  end
end
