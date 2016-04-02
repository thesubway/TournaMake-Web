require 'test_helper'

class BracketTest < ActiveSupport::TestCase
  def setup
      @Bracket = brackets(:one)
  end

  test "bracket is valid" do
    assert @Bracket.valid?
  end

  test "bracket clarifies if started or not" do
    @Bracket.isStarted = nil
    assert_not @Bracket.valid?
  end
end
