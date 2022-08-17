class Departure < ApplicationRecord
  belongs_to :departing_flight, class_name: "Flight"
  belongs_to :departure_airport, class_name: "Airport"
end
