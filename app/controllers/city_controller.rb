class CityController < ApplicationController
  def show
    @city = City.find(params[:id])
    @list_gossip = Gossip.where(id: @city)
  end
end
