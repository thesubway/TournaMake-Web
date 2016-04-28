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

  test "bracket can have matches" do
    match = matches(:one)
    match.bracket = @Bracket
    match.save
    match.reload
    assert_equal @Bracket, match.bracket
    assert @Bracket.reload.matches.include? match
  end

  test "bracket can have slots" do
    bracket_slot = bracket_slots(:one)
    bracket_slot.bracket = @Bracket
    bracket_slot.save
    bracket_slot.reload
    assert_equal @Bracket, bracket_slot.bracket
    assert @Bracket.reload.bracket_slots.include? bracket_slot
  end
end
