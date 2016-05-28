class TournamentsController < ApplicationController

  # GET /tournaments/new
  def new
    tournament = Tournament.new
  end

  # POST /tournaments
  # POST /tournaments.json
  def create
    tournament = Tournament.new(tournament_params)
    tournament.save
  end

  def update
     tournament = Tournament.find(params[:id])
     tournament.email = tournament_params[:name]
     tournament.save
  end

  private
  def tournament_params
    params.require(:tournament).permit(:name)
  end
end
