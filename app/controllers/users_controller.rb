class UsersController < ApplicationController
  

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      profile_image: params[:profile_image],
      type: params[:type]
    )
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.profile_image = params[:profile_image] || user.profile_image
    user.type = params[:type] || user.type
    
    if user.save
      render json: user
    else 
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end


end
