# class TeamsController < ApplicationController
#   def index
#     @teams = Team.page(params[:page]).per(10)
#   end

#   def show
#     @team = Team.find(params[:id])
#   end
# end

# Simple Search
# class TeamsController < ApplicationController
#   def index
#     if params[:search].present?
#       @teams = Team.where("team_name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
#     else
#       @teams = Team.page(params[:page]).per(10)
#     end
#   end

#   def show
#     @team = Team.find(params[:id])
#   end
# end

# Hierarchical Search
class TeamsController < ApplicationController
  def index
    if params[:search].present? && params[:coach].present?
      @teams = Team.where("team_name LIKE ?", "%#{params[:search]}%").where("coach LIKE ?", "%#{params[:coach]}%").page(params[:page]).per(10)
    elsif params[:search].present?
      @teams = Team.where("team_name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
    elsif params[:coach].present?
      @teams = Team.where("coach LIKE ?", "%#{params[:coach]}%").page(params[:page]).per(10)
    else
      @teams = Team.page(params[:page]).per(10)
    end
  end

  def show
    @team = Team.find(params[:id])
  end
end
