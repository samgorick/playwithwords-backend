class UsersController < ApplicationController

  def create
    user = User.find_or_create_by!(name: params[:name])
    render json: user
    # render json: UserSerializer.new(user)
  end
  
end
