class Owner::BookingsController < ApplicationController
  def accept
    @booking = Booking.find_by_id(params[:id])
    @booking.update(status: "Confirmé")
    redirect_to profile_path
  end

  def decline
    @booking = Booking.find_by_id(params[:id])
    @booking.update(status: "Refusé")
    redirect_to profile_path
  end
end
