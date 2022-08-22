class PassengersController < ApplicationController
  def create
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.find(params[:booking_id])
    @passenger = @flight.@booking.passengers.create(passenger_params)
  end

  private
  def passenger_params
    params.require(:passenger).permit(:name, :email)
  end
end
