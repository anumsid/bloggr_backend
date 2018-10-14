class ApplicationController < ActionController::API

  def issue_token(user)
    JWT.encode({user_id: user.id}, ENV['secret_key'], 'HS256')
  end
end
