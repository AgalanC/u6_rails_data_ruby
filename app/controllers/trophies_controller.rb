# class TrophiesController < ApplicationController
#   def index
#     @trophies = Trophy.page(params[:page]).per(10)
#   end

#   def show
#     @trophy = Trophy.find(params[:id])
#   end
# end

# Simple Search
# class TrophiesController < ApplicationController
#   def index
#     if params[:search].present?
#       @trophies = Trophy.where("trophy_name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
#     else
#       @trophies = Trophy.page(params[:page]).per(10)
#     end
#   end

#   def show
#     @trophy = Trophy.find(params[:id])
#   end
# end

# Hierarchical Search
class TrophiesController < ApplicationController
  def index
    if params[:search].present? && params[:year].present?
      @trophies = Trophy.where("trophy_name LIKE ?", "%#{params[:search]}%").where(year: params[:year]).page(params[:page]).per(10)
    elsif params[:search].present?
      @trophies = Trophy.where("trophy_name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
    elsif params[:year].present?
      @trophies = Trophy.where(year: params[:year]).page(params[:page]).per(10)
    else
      @trophies = Trophy.page(params[:page]).per(10)
    end
  end

  def show
    @trophy = Trophy.find(params[:id])
  end
end
