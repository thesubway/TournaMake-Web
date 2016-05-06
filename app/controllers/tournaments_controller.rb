class TournamentsController < ApplicationController
  def new
    tournament = Tournament.new(tournament_params)
    tournament.save
  end

  private
  def tournament_params
    params.require(:tournament).permit(:name)
  end
end
