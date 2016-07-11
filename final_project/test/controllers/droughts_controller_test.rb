require 'test_helper'

class DroughtsControllerTest < ActionController::TestCase
  setup do
    @drought = droughts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:droughts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drought" do
    assert_difference('Drought.count') do
      post :create, drought: { climate_id: @drought.climate_id, drought_severity: @drought.drought_severity, year: @drought.year }
    end

    assert_redirected_to drought_path(assigns(:drought))
  end

  test "should show drought" do
    get :show, id: @drought
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drought
    assert_response :success
  end

  test "should update drought" do
    patch :update, id: @drought, drought: { climate_id: @drought.climate_id, drought_severity: @drought.drought_severity, year: @drought.year }
    assert_redirected_to drought_path(assigns(:drought))
  end

  test "should destroy drought" do
    assert_difference('Drought.count', -1) do
      delete :destroy, id: @drought
    end

    assert_redirected_to droughts_path
  end
end
