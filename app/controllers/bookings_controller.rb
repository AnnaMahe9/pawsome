class BookingsController < ApplicationController
  def create
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new(params_booking)
    @booking.pet = @pet
    @booking.status = "En attente"
      @booking.renter = current_user
    @booking.total_price = @pet.price_per_day * (@booking.ends_on - @booking.starts_on)
    if @booking.save
      flash[:notice] = "Tout s'est bien passé, la réservation est enregistrée"
      redirect_to pets_path
    else
      flash.now[:alert] = "Réservation non enregistrée"
      render "pets/show", status: :unprocessable_entity
    end
  end

  private

  def params_booking
    params.require(:booking).permit(:starts_on, :ends_on)
  end
end
