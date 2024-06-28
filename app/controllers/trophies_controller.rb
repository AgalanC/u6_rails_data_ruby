class TrophiesController < ApplicationController
  def index
    @trophies = Trophy.page(params[:page]).per(10)
  end

  def show
    @trophy = Trophy.find(params[:id])
  end
end
