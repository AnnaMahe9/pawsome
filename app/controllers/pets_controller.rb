class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @pets = Pet.search_by_name_and_description(params[:query])
    else
      @pets = Pet.all
    end
  end

  def show
    @pet = Pet.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(params_pet)
    redirect_to pet_path(@pet)
  end

  private

  def params_task
    params.require(:pet).permit(:name, :species, :description, :age, :price_per_day)
  end
end
