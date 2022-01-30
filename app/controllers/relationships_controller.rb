class RelationshipsController < ApplicationController

  def create
    relationship = Relationship.new(
      artist_id: params[:artist_id],
      client_id: params[:client_id]
    )

    if relationship.save
      render json: relationship
    else
      render json: {errors: relationship.errors.full_messages}, status: :bad_request
    end
  end

end
