class API::V1::LikedArtistsController < ApplicationController
  def index
    render json: LikedArtist.all
  end
end
