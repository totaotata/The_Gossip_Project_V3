
class GossipController < ApplicationController
  def show
    first_occurence= Gossip.first.id
    @gossip = Gossip.find( first_occurence + params[:id].to_i - 1) 
  end
  def create
  @user = User.find(22)
  @gossip = Gossip.new('user_id' => @user.id,
                        'title' => params[:title],
                        'content' => params[:content])
if @gossip.save # essaie de sauvegarder en base @gossip
    # si ça marche, il redirige vers la page d'index du site
    redirect_to welcome_path
   else
  #   # sinon, il render la view new (qui est celle sur laquelle on est déjà)
     render new_gossip_path
   end
end
def new
  @gossip = Gossip.new
end
end
