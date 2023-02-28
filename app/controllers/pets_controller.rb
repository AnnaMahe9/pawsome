class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @pet = Pet.find(params[:id])
    @booking = Booking.new
  end
end
