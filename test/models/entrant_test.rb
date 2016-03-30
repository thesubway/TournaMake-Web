require 'test_helper'

class EntrantTest < ActiveSupport::TestCase
  def setup
      @Entrant = entrants(:one)
  end

  test "entrant is valid" do
      assert @Entrant.valid?
  end
end
