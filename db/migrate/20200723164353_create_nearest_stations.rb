class CreateNearestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :nearest_stations do |t|
      t.text :line
      t.text :station
      t.integer :on_foot

      t.timestamps
    end
  end
end
