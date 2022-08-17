class Arrival < ApplicationRecord
  belongs_to :arriving_flight, class_name: "Flight"
  belongs_to :arrival_airport, class_name: "Airport"
end
