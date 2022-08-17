class AddDepartureAirportIdToDepartures < ActiveRecord::Migration[7.0]
  def change
    add_column :departures, :departure_airport_id, :integer
  end
end
