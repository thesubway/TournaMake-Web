require 'test_helper'

class TournamentsControllerTest < ActionController::TestCase
  def setup
    @tournament = tournaments(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
