class UsersController < ApplicationController
  

  def create
    client = Client.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      profile_image: params[:profile_image]
    )
    render json: client
  end
end
