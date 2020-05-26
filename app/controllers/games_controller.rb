class GamesController < ApplicationController

  def create
    game = Game.create!(game_params)
    render json: game
  end

  private

  def game_params
    params.require(:game).permit(:word_list, :score, :user_id, :letter_list_id)
  end
end
