class RelationshipsController < ApplicationController

  def create
    relationships = Relationships.new(
      artist_id: params[:artist_id]
      client_id: params[:client_id]
    )
    if relationships.save
      render json: relationships
    else
      render json: {errors: relationships.errors.full_messages}, status: :bad_request
    end
  end

end
