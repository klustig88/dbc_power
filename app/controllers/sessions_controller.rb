class SessionsController < ApplicationController
  def create
  	# P sessin[:user_id	]
    user = User.from_omniauth(env["omniauth.auth"])
  #   p "XXXXXXCCCCCCFCFCCFCCCCCCCCC"
  #   p user
		# p "XXXXXXCCCCCCFCFCCFCCCCCCCCC"

    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
  	session.clear
  	redirect_to root_path
  end


end
