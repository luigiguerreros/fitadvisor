class FriendshipsController < ApplicationController
  before_filter :authenticate_user!

  def index
    #@friendships = Friendship.where(user_id: current_user.id)
    #@fitpartners =  Fitpartner.all
    @friendships = Friendship.all
  end
  def create
    @friendship = Friendship.new(user_id: params[:user_id] , fitpartner_id: params[:fitpartner_id])

    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to root_url
    else
      flash[:error] = "Unable to add friend."
      redirect_to root_url
    end
  end
  
  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to dashboard_show_url
  end
end