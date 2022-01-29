class TattoosController < ApplicationController

  def create
    tattoo = Tattoo.new(
      price: params[:price],
      time: params[:time],
    )
    if tattoo.save
      render json: tattoo
    else
      render json: {errors: tattoo.errors.full_messages}, status: :bad_request
    end
  end

end
