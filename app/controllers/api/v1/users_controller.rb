class Api::V1::UsersController < ApplicationController
  def index
    binding.pry
    render json: User.all
  end

  def create
    
  end
end
