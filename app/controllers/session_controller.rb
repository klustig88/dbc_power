class SessionsController < ApplicationController
  def create
  	P sessin[:user_id	]
    user = User.from_omniauth(env["omniauth.auth"])
    p "XXXXXXCCCCCCFCFCCFCCCCCCCCC"
    p user
		p "XXXXXXCCCCCCFCFCCFCCCCCCCCC"

    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
    @user = User.find_or_create_from_auth_hash(auth_hash)
    self.current_user = @user
    redirect_to '/'
  end


end
