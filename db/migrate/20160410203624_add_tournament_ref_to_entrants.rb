class AddTournamentRefToEntrants < ActiveRecord::Migration
  def change
    add_reference :entrants, :tournament, index: true, foreign_key: true
  end
end
