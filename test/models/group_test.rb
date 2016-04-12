require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  def setup
      @Group = groups(:one)
  end

  test "Group is valid" do
      assert @Group.valid?
  end
end
