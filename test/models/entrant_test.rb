require 'test_helper'

class EntrantTest < ActiveSupport::TestCase
  def setup
      @Entrant = entrants(:one)
  end

  test "entrant is valid" do
      assert @Entrant.valid?
  end

  test "name should be present and non-blank" do
      @Entrant.name = "     "
      assert_not @Entrant.valid?
  end
end
