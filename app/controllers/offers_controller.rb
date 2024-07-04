class OffersController < ApplicationController
  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    @offer.girlfriend = Offer.find(params[:girlfriend_id])
    if @offer.save
      redirect_to root_path, notice:"Offer succesfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def offer_params
    params.require(:offer).permit(:message, :date_offered)
  end
end
