class ReviewsController < ApplicationController

  # Si date résa est avant aujourd'hui ALORS je peux laisser un avis
  # si la date de la réservation est dépassée
  # ET le statut est confirmé alors je peux laisser un avis

  def new
    @review = Review.new
  end

  def create
    @review = Pet.find(params[:pet_id])
    @review = Pet.new(set_params)
    @review.list = @review
    if @review.save
      redirect_to pet_path(@pet)
    else
      redirect_to new_list_bookmark_path(@pet), status: :unprocessable_entity
    end
  end

  private

  def set_params
    params.require(:review).permit(:rate, :comment, :pet_id)
  end
end
