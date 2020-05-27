class GamesController < ApplicationController

  def index
    top3 = Game.all.order(score: :desc).limit(3)
    render json: top3, include: [:letter_list, :user] 
  end
  
  def create
    game = Game.create!(game_params)
    render json: game
  end

  private

  def game_params
    params.require(:game).permit(:word_list, :score, :user_id, :letter_list_id)
  end
end
