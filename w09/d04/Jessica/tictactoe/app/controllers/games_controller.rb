class GamesController < ApplicationController
 
  def new
    @games = Game.all
  end

  def create
    @game = Game.create(won: params[:won])
    render json: @game
  end

end
