require 'test_helper'

class BracketSlotsControllerTest < ActionController::TestCase
  setup do
    @bracket_slot = bracket_slots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bracket_slots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bracket_slot" do
    assert_difference('BracketSlot.count') do
      post :create, bracket_slot: { bracket_id: @bracket_slot.bracket_id, seedLeft: @bracket_slot.seedLeft, seedRight: @bracket_slot.seedRight, slotNum: @bracket_slot.slotNum }
    end

    assert_redirected_to bracket_slot_path(assigns(:bracket_slot))
  end

  test "should show bracket_slot" do
    get :show, id: @bracket_slot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bracket_slot
    assert_response :success
  end

  test "should update bracket_slot" do
    patch :update, id: @bracket_slot, bracket_slot: { bracket_id: @bracket_slot.bracket_id, seedLeft: @bracket_slot.seedLeft, seedRight: @bracket_slot.seedRight, slotNum: @bracket_slot.slotNum }
    assert_redirected_to bracket_slot_path(assigns(:bracket_slot))
  end

  test "should destroy bracket_slot" do
    assert_difference('BracketSlot.count', -1) do
      delete :destroy, id: @bracket_slot
    end

    assert_redirected_to bracket_slots_path
  end
end
