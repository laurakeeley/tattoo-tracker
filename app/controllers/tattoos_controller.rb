class TattoosController < ApplicationController

  def create
    tattoo = Tattoo.new(
      price: params[:price],
      time: params[:time],
      tattoo_id: params[:tattoo_id]
    )
    if tattoo.save
      render json: tattoo
    else
      render json: {errors: tattoo.errors.full_messages}, status: :bad_request
    end
  end

  def show
    tattoo = Tattoo.find(params[:id])
    render json: tattoo
  end

  def update
    tattoo = Tattoo.find(params[:id])
    tattoo.price = params[:price] || tattoo.price
    tattoo.time = params[:time] || tattoo.time
    tattoo.tattoo_id = params[:tattoo_id] || tattoo.tattoo_id

    
    if tattoo.save
      render json: tattoo
    else 
      render json: {errors: tattoo.errors.full_messages}, status: :unprocessable_entity
    end
  end
  
  def destroy
    tattoo = Tattoo.find(params[:id])
    if tattoo.destroy
      render json: {message: "Tattoo has been successfully deleted."}
    else
      render json: {errors: tattoo.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
