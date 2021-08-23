require "test_helper"

class FriendsLotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friends_lot = friends_lots(:one)
  end

  test "should get index" do
    get friends_lots_url
    assert_response :success
  end

  test "should get new" do
    get new_friends_lot_url
    assert_response :success
  end

  test "should create friends_lot" do
    assert_difference('FriendsLot.count') do
      post friends_lots_url, params: { friends_lot: { email: @friends_lot.email, first_name: @friends_lot.first_name, instagram: @friends_lot.instagram, last_name: @friends_lot.last_name, mobile: @friends_lot.mobile } }
    end

    assert_redirected_to friends_lot_url(FriendsLot.last)
  end

  test "should show friends_lot" do
    get friends_lot_url(@friends_lot)
    assert_response :success
  end

  test "should get edit" do
    get edit_friends_lot_url(@friends_lot)
    assert_response :success
  end

  test "should update friends_lot" do
    patch friends_lot_url(@friends_lot), params: { friends_lot: { email: @friends_lot.email, first_name: @friends_lot.first_name, instagram: @friends_lot.instagram, last_name: @friends_lot.last_name, mobile: @friends_lot.mobile } }
    assert_redirected_to friends_lot_url(@friends_lot)
  end

  test "should destroy friends_lot" do
    assert_difference('FriendsLot.count', -1) do
      delete friends_lot_url(@friends_lot)
    end

    assert_redirected_to friends_lots_url
  end
end
