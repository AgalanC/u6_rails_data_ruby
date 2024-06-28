class TrophiesController < ApplicationController
  def index
    @trophies = Trophy.all
  end

  def show
    @trophy = Trophy.find(params[:id])
  end
end
