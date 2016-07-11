require 'test_helper'

class StateDroughtPresControllerTest < ActionController::TestCase
  setup do
    @state_drought_pre = state_drought_pres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_drought_pres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_drought_pre" do
    assert_difference('StateDroughtPre.count') do
      post :create, state_drought_pre: { climate_id_id: @state_drought_pre.climate_id_id, state_abbreviation_id: @state_drought_pre.state_abbreviation_id }
    end

    assert_redirected_to state_drought_pre_path(assigns(:state_drought_pre))
  end

  test "should show state_drought_pre" do
    get :show, id: @state_drought_pre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_drought_pre
    assert_response :success
  end

  test "should update state_drought_pre" do
    patch :update, id: @state_drought_pre, state_drought_pre: { climate_id_id: @state_drought_pre.climate_id_id, state_abbreviation_id: @state_drought_pre.state_abbreviation_id }
    assert_redirected_to state_drought_pre_path(assigns(:state_drought_pre))
  end

  test "should destroy state_drought_pre" do
    assert_difference('StateDroughtPre.count', -1) do
      delete :destroy, id: @state_drought_pre
    end

    assert_redirected_to state_drought_pres_path
  end
end
