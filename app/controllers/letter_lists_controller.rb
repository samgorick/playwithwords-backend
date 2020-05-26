class LetterListsController < ApplicationController

  def create
    letters = LetterList.create!(letters: params[:letter_list])
    render json: letters
  end

end
