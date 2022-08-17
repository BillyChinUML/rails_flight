class AddArrivalAirportIdToArrivals < ActiveRecord::Migration[7.0]
  def change
    add_column :arrivals, :arrival_airport_id, :integer
  end
end
