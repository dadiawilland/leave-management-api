class Api::AccessTokensController < ApplicationController
  before_action :set_user

  def create
    email = params["email"]
    password = params["password"]

    authenticate_with_http_basic do |email, password|
      if @user&.authenticate(password)
        access_token = user.generate_token!
     
        render json: access_token, status: :created and return
      end
    end

    render status: :unauthorized
  end

  def destroy
    token = @user.access_tokens
    token&.delete_all
  end

  private

  def set_user
    @user = User.find_by email: params["email"]
      if @user.nil?
        render json: "Email not found" and return
      end
  end

end