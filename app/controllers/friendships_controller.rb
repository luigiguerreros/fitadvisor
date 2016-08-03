class FriendshipsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @friendships = Friendship.where(user_id: current_user.id)
    #@fitpartners =  Friendship.where(:user_id => current_user.id)
    @fitpartners = Fitpartner.all

    #@vali = Friendship.pluck(:user_id)

    

  end
  def create
    @friendship = Friendship.new(friendship_params)

    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to root_url
    else
      flash[:error] = "Unable to add friend."
      redirect_to root_url
    end
  end
  def new
    
  end
  
  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to dashboard_show_url
  end

  private

  def friendship_params
    params.require(:friendship).permit(:fitpartner_id,:user_id)

  end
end



