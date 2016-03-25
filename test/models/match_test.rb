require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  def setup
    @Match = matches(:one)
  end

  test "Match is valid" do
      assert @Match.valid?
  end

  test "Match is valid regardless of completion" do
      @Match.leftScore = 1
      @Match.rightScore = 2
      assert @Match.valid?
      @Match.leftScore = nil
      @Match.rightScore = nil
      assert @Match.valid?
  end
end
