class DashboardController < ApplicationController
  	before_filter :authenticate_user!

  def index
  	@fitpartners = Fitpartner.all
    @fit = Fitpartner.where(user_id: current_user.id).present?
  end

  def show
    @user = current_user
    @fitpartners = Fitpartner.where(user_id: current_user.id)
  end
  
  def create
  	param1 = params[:param1] # "value1"
	param2 = params[:param2] # "value2"
    @friendship = Friendship.new(user_id: params1 , fitpartner_id: params2 )

    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to root_url
    else
      flash[:error] = "Unable to add friend."
      redirect_to root_url
    end
  end
end
