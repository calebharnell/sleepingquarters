require 'test_helper'

class BoatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boat = boats(:one)
  end

  test "should get index" do
    get boats_url
    assert_response :success
  end

  test "should get new" do
    get new_boat_url
    assert_response :success
  end

  test "should create boat" do
    assert_difference('Boat.count') do
      post boats_url, params: { boat: { baths: @boat.baths, boat_name: @boat.boat_name, description: @boat.description, kitchen: @boat.kitchen, price: @boat.price, shower: @boat.shower, toilets: @boat.toilets, type: @boat.type } }
    end

    assert_redirected_to boat_url(Boat.last)
  end

  test "should show boat" do
    get boat_url(@boat)
    assert_response :success
  end

  test "should get edit" do
    get edit_boat_url(@boat)
    assert_response :success
  end

  test "should update boat" do
    patch boat_url(@boat), params: { boat: { baths: @boat.baths, boat_name: @boat.boat_name, description: @boat.description, kitchen: @boat.kitchen, price: @boat.price, shower: @boat.shower, toilets: @boat.toilets, type: @boat.type } }
    assert_redirected_to boat_url(@boat)
  end

  test "should destroy boat" do
    assert_difference('Boat.count', -1) do
      delete boat_url(@boat)
    end

    assert_redirected_to boats_url
  end
end
