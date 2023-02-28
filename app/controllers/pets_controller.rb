class PetsController < ApplicationController
  def show
    @pet = Pet.find(params[:id])
    @booking = Booking.new
  end
end
