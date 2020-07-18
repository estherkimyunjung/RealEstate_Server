class Api::V1::AuthController < ApplicationController
  skip_before_action :logged_in?
  
  def create
    # byebug
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      render json: {username: user.username, firstname: user.firstname, lastname: user.lastname, email: user.email, role: user.role, avatar: user.avatar, token: encode_token({user_id: user.id})}
    else
      render json: {error: "Invalid usernamd or password"}
    end
  end
end
