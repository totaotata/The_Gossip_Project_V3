
class GossipController < ApplicationController
  def show
    first_occurence= Gossip.first.id
    @gossip = Gossip.find( first_occurence + params[:id].to_i)
  end
end
