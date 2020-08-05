class UsersController < ApplicationController

  def create
    user = User.find_or_create_by!(name: params[:name])
    render json: user, include: [:games, :letter_lists] 
  end
  
end
