require 'test_helper'

class HotelmenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hotelmenu = hotelmenus(:one)
  end

  test "should get index" do
    get hotelmenus_url
    assert_response :success
  end

  test "should get new" do
    get new_hotelmenu_url
    assert_response :success
  end

  test "should create hotelmenu" do
    assert_difference('Hotelmenu.count') do
      post hotelmenus_url, params: { hotelmenu: { name: @hotelmenu.name } }
    end

    assert_redirected_to hotelmenu_url(Hotelmenu.last)
  end

  test "should show hotelmenu" do
    get hotelmenu_url(@hotelmenu)
    assert_response :success
  end

  test "should get edit" do
    get edit_hotelmenu_url(@hotelmenu)
    assert_response :success
  end

  test "should update hotelmenu" do
    patch hotelmenu_url(@hotelmenu), params: { hotelmenu: { name: @hotelmenu.name } }
    assert_redirected_to hotelmenu_url(@hotelmenu)
  end

  test "should destroy hotelmenu" do
    assert_difference('Hotelmenu.count', -1) do
      delete hotelmenu_url(@hotelmenu)
    end

    assert_redirected_to hotelmenus_url
  end
end
