class Owner::PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(list_params)
    @pet.owner = current_user

    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:pet).permit(:name, :species, :description, :price_per_day, :age, :photo)
  end
end
