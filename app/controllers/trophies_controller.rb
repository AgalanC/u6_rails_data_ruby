# class TrophiesController < ApplicationController
#   def index
#     @trophies = Trophy.page(params[:page]).per(10)
#   end

#   def show
#     @trophy = Trophy.find(params[:id])
#   end
# end

class TrophiesController < ApplicationController
  def index
    if params[:search].present?
      @trophies = Trophy.where("trophy_name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
    else
      @trophies = Trophy.page(params[:page]).per(10)
    end
  end

  def show
    @trophy = Trophy.find(params[:id])
  end
end
