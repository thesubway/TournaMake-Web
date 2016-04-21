require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  def setup
      @Group = groups(:one)
  end

  test "Group is valid" do
      assert @Group.valid?
  end

  test "letter should be present" do
      @Group.letter = "     "
      assert_not @Group.valid?
  end

  test "letter should have length 1" do
      @Group.letter = "AB"
      assert_not @Group.valid?
  end

  test "group can have matches" do
    match = matches(:one)
    match.group = @Group
    match.save
    match.reload
    assert_equal @Group, match.group
    assert @Group.reload.matches.include? match
  end
end
