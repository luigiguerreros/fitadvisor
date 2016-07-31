class DashboardController < ApplicationController
  	before_filter :authenticate_user!

  def index
  	@fitpartners = Fitpartner.all
  end

  def show
    @user = current_user
    @fitpartners = Fitpartner.where(user_id: current_user.id)
  end
end
