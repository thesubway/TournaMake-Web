class AddTournamentRefToBrackets < ActiveRecord::Migration
  def change
    add_reference :brackets, :tournament, index: true, foreign_key: true
  end
end
