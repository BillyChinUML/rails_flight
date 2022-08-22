class BookingsController < ApplicationController

  def show
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.find(params[:id])
  end
  
  def new
    @flight = Flight.find(params[:flight_id])
    @departure_airport = Airport.find(@flight.departure_airport_id)
    @arrival_airport = Airport.find(@flight.arrival_airport_id)
    @booking = @flight.bookings.new
  end

  def create
    @flight = Flight.find(params[:flight_id])
    @departure_airport = Airport.find(@flight.departure_airport_id)
    @arrival_airport = Airport.find(@flight.arrival_airport_id)
    @booking = @flight.bookings.new
    @booking.date = @flight.start
    @booking.departure_airport = @departure_airport.code
    @booking.arrival_airport = @arrival_airport.code
    @passenger = @flight.passengers.new(passenger_params)
    if @booking.save
      redirect_to flight_booking_path(@flight, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def passenger_params
    params.permit(:name, :email)
  end
end
