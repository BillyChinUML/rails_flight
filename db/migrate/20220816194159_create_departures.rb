class CreateDepartures < ActiveRecord::Migration[7.0]
  def change
    create_table :departures do |t|
      t.integer :departing_flight_id

      t.timestamps
    end
  end
end
