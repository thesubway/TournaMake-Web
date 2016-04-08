require 'test_helper'

class BracketSlotTest < ActiveSupport::TestCase
  def setup
      @BracketSlot = bracket_slots(:one)
  end

  test "bracket slot is valid" do
      assert @BracketSlot.valid?
  end

  test "bracket must have slotNum" do
      @BracketSlot.slotNum = nil
      assert_not @BracketSlot.valid?
  end
end
