class PlayersController < ApplicationController
  def index
    @players = Player.order(:name)
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    player = Player.create(player_params)
    redirect_to player
  end

  private

  def player_params
    params.require(:player).permit(:name, :job, :description, :health, :magic, :is_alive)
  end
end
