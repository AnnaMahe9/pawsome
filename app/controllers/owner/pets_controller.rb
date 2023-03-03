class Owner::PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(params_pet)
    @pet.owner = current_user

    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pet = Pet.find(params[:id])
    @user = current_user
  end

  def update
    @user = current_user
    @pet = Pet.find(params[:id])
    @pet.update(params_pet)
    redirect_to profile_path
  end

  private

  def params_pet
    params.require(:pet).permit(:name, :species, :description, :price_per_day, :age, :photo)
  end
end
