class SessionsController < ApplicationController
  skip_before_action :authorized

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
    else
      flash[:error] = 'User not found'
    end
    
    redirect_to root_path
  end
end
