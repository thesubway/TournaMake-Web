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
end
