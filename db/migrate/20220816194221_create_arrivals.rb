class CreateArrivals < ActiveRecord::Migration[7.0]
  def change
    create_table :arrivals do |t|
      t.integer :arriving_flight_id

      t.timestamps
    end
  end
end
