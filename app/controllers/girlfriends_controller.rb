class GirlfriendsController < ApplicationController
  def index
    @girlfriends = Girlfriend.all
  end

  def show
    @offer = Offer.new
    @girlfriend = Girlfriend.find(params[:id])
  end

  def new
    @girlfriend = Girlfriend.new
  end

  def create
    @girlfriend = Girlfriend.new(girlfriend_params)
    @girlfriend.user = current_user
    @girlfriend.save
    redirect_to girlfriend_path(@girlfriend)
  end

  def destroy
    @girlfriend = Girlfriend.find(params[:id])
    @girlfriend.destroy
    # No need for app/views/girlfriends/destroy.html.erb
    redirect_to girlfriends_path, status: :see_other
  end

  private

  def girlfriend_params
    params.require(:girlfriend).permit(:name, :location, :pfp, :hourly_rate, :age)
  end
end
