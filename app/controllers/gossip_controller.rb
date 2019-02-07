
class GossipController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
  end
  def create
  @user = User.find(1)
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
def edit
  @gossip = Gossip.find(params[:id])
end
def update
  @gossip = Gossip.find(params[:id])
  post_params = params.require(:gossip).permit(:title, :content)
  @gossip.update(post_params)
  if @gossip.update(post_params)
    redirect_to welcome_path
  else
    render :edit
  end
end
def destroy
  @gossip = Gossip.find(params[:id])
  @gossip.destroy
  redirect_to welcome_path
end
end
