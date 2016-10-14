class SessionsController < ApplicationController

  def new  #render new login form
    render :new
  end

  def create
    # SessionsController#create should re-set the appropriate user's session_token and session[:session_token].
    user = User.find_by_credentials(
    params[:user][:email], params[:user][:password]
    )

    if user.nil?
      flash[:errors] = ["Incorrect user/password combination"]
      render :new
    else
      log_in!(user)
      redirect_to user_url(user)
    end

  end

  def destroy
    log_out!(current_user)
  end

end
