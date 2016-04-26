require 'test_helper'

class TournamentTest < ActiveSupport::TestCase
  def setup
      @Tournament = tournaments(:one)
  end

  test "tournament is valid" do
      assert @Tournament.valid?
  end

  test "name should be present" do
      @Tournament.name = "    "
      assert_not @Tournament.valid?
  end

  test "tournament can have entrants" do
       entrant = entrants(:one)
       entrant.tournament = @Tournament
       entrant.save
       entrant.reload
       assert_equal @Tournament, entrant.tournament
       assert @Tournament.reload.entrants.include? entrant
  end

  test "tournament can have groups" do
    group = groups(:one)
    group.tournament = @Tournament
    group.save
    group.reload
    assert_equal @Tournament, group.tournament
    assert @Tournament.reload.groups.include? group
  end

  test "tournament can have brackets" do
    bracket = brackets(:one)
    bracket.tournament = @Tournament
    bracket.save
    bracket.reload
    assert_equal @Tournament, bracket.tournament
    assert @Tournament.reload.brackets.include? bracket
  end

end
