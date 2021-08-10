class BoardingPassengersController < ApplicationController

  def destroy
    @boarding_passenger = BoardingPassenger.find(params[:id])
    @boarding_passenger.destroy
    redirect_to "/flights"
  end
end
