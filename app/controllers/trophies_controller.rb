class TrophiesController < ApplicationController
  def index
    @trophies = Trophy.all
  end
end
