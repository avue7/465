require 'test_helper'

class AnnualBurntAcresControllerTest < ActionController::TestCase
  setup do
    @annual_burnt_acre = annual_burnt_acres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:annual_burnt_acres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create annual_burnt_acre" do
    assert_difference('AnnualBurntAcre.count') do
      post :create, annual_burnt_acre: { acres_per_sq_miles: @annual_burnt_acre.acres_per_sq_miles, state_id: @annual_burnt_acre.state_id, year: @annual_burnt_acre.year }
    end

    assert_redirected_to annual_burnt_acre_path(assigns(:annual_burnt_acre))
  end

  test "should show annual_burnt_acre" do
    get :show, id: @annual_burnt_acre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @annual_burnt_acre
    assert_response :success
  end

  test "should update annual_burnt_acre" do
    patch :update, id: @annual_burnt_acre, annual_burnt_acre: { acres_per_sq_miles: @annual_burnt_acre.acres_per_sq_miles, state_id: @annual_burnt_acre.state_id, year: @annual_burnt_acre.year }
    assert_redirected_to annual_burnt_acre_path(assigns(:annual_burnt_acre))
  end

  test "should destroy annual_burnt_acre" do
    assert_difference('AnnualBurntAcre.count', -1) do
      delete :destroy, id: @annual_burnt_acre
    end

    assert_redirected_to annual_burnt_acres_path
  end
end
