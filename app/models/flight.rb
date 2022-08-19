class Flight < ApplicationRecord
  has_one :departure, foreign_key: :departing_flight_id
  has_one :departure_airport, through: :departure
  has_one :arrival, foreign_key: :arriving_flight_id
  has_one :arrival_airport, through: :arrival

  def self.search(search)
    if search
      flight = Flight.find_by(id: search)
      if flight
        self.where(id: flight)
      else
        Flight.all
      end
    else
      Flight.all
    end
  end
end
