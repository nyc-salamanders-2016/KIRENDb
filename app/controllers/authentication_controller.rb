class AuthenticationController < ApplicationController
  def new

  end

  def login
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to "/"
    else
      @error = "Invalid username and/or password"
      render 'new'
    end
  end

  def logout
    session.delete(:user_id)
    redirect_to "/"
  end
end
