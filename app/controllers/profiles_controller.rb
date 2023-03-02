class ProfilesController < ApplicationController
  def show
    @user = current_user
    @pets = current_user.pets

    @bookings = Booking.includes(:pet).where(pet: { owner: current_user })
  end
end
