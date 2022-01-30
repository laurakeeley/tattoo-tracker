class ImagesController < ApplicationController

  def create
    image = Image.new(
      url: params[:url]
    )
    if image.save
      render json: image
    else
      render json: {errors: image.errors.full_messages}, status: :bad_request
    end
  end

  def show
    image = Image.find(params[:id])
    render json: image
  end

end
