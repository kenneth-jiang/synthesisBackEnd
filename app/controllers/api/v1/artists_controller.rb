class Api::V1::ArtistsController < ApplicationController
  def index
    render json: Artist.all
  end

  def show
    binding.pry
  end

  def related_artists
    binding.pry
  end
end
