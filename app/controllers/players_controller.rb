# class PlayersController < ApplicationController
#   def index
#     @players = Player.page(params[:page]).per(10)
#   end

#   def show
#     @player = Player.find(params[:id])
#   end
# end

#  Simple Search
# class PlayersController < ApplicationController
#   def index
#     if params[:search].present?
#       @players = Player.where("player_name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
#     else
#       @players = Player.page(params[:page]).per(10)
#     end
#   end

#   def show
#     @player = Player.find(params[:id])
#   end
# end

# Hierarchical Search
class PlayersController < ApplicationController
  def index
    @teams = Team.all
    if params[:search].present? && params[:team_id].present?
      @players = Player.where("player_name LIKE ?", "%#{params[:search]}%").where(team_id: params[:team_id]).page(params[:page]).per(10)
    elsif params[:search].present?
      @players = Player.where("player_name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
    elsif params[:team_id].present?
      @players = Player.where(team_id: params[:team_id]).page(params[:page]).per(10)
    else
      @players = Player.page(params[:page]).per(10)
    end
  end

  def show
    @player = Player.find(params[:id])
  end
end
