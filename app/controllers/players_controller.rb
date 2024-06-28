# class PlayersController < ApplicationController
#   def index
#     @players = Player.page(params[:page]).per(10)
#   end

#   def show
#     @player = Player.find(params[:id])
#   end
# end

class PlayersController < ApplicationController
  def index
    if params[:search].present?
      @players = Player.where("player_name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
    else
      @players = Player.page(params[:page]).per(10)
    end
  end

  def show
    @player = Player.find(params[:id])
  end
end
