require 'test_helper'

class WildfiresControllerTest < ActionController::TestCase
  setup do
    @wildfire = wildfires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wildfires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wildfire" do
    assert_difference('Wildfire.count') do
      post :create, wildfire: { burnt_acreage: @wildfire.burnt_acreage, state_id: @wildfire.state_id, year: @wildfire.year }
    end

    assert_redirected_to wildfire_path(assigns(:wildfire))
  end

  test "should show wildfire" do
    get :show, id: @wildfire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wildfire
    assert_response :success
  end

  test "should update wildfire" do
    patch :update, id: @wildfire, wildfire: { burnt_acreage: @wildfire.burnt_acreage, state_id: @wildfire.state_id, year: @wildfire.year }
    assert_redirected_to wildfire_path(assigns(:wildfire))
  end

  test "should destroy wildfire" do
    assert_difference('Wildfire.count', -1) do
      delete :destroy, id: @wildfire
    end

    assert_redirected_to wildfires_path
  end
end
