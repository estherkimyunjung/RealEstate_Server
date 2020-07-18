class ApplicationController < ActionController::API
  before_action :logged_in?

  def encode_token(payload)
    JWT.encode(payload, "RealEstate1800", "HS256") #algo is optional as a default HS256
  end

  def logged_in?
    headers = request.headers["Authorization"]
    token = headers.split(" ")[1]

    begin
      user_id = JWT.decode(token, "RealEstate1800")[0]["user_id"]
      user = User.find(user_id)
    rescue
      user = nil
    # ensure
      #always runs with an error or without
    end
      render json: {error: "Please Login"} unless user
  end
end
