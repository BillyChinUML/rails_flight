class FlightsController < ApplicationController
  def index
    @flights = Flight.search(params[:search])
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ] }
    @flight_options = Flight.all.map{ |f| [ f.start, f.id ] }
  end

  def show
    @flight = Flight.find(params[:id])
    @departure_airport = Airport.find(@flight.departure_airport_id)
    @arrival_airport = Airport.find(@flight.arrival_airport_id)
    @departure_name = @departure_airport.code
    @arrival_name = @arrival_airport.code
  end
end
