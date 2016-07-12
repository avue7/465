require 'test_helper'

class DroughtUsersControllerTest < ActionController::TestCase
  setup do
    @drought_user = drought_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drought_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drought_user" do
    assert_difference('DroughtUser.count') do
      post :create, drought_user: { droughts_id: @drought_user.droughts_id, user_id: @drought_user.user_id }
    end

    assert_redirected_to drought_user_path(assigns(:drought_user))
  end

  test "should show drought_user" do
    get :show, id: @drought_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drought_user
    assert_response :success
  end

  test "should update drought_user" do
    patch :update, id: @drought_user, drought_user: { droughts_id: @drought_user.droughts_id, user_id: @drought_user.user_id }
    assert_redirected_to drought_user_path(assigns(:drought_user))
  end

  test "should destroy drought_user" do
    assert_difference('DroughtUser.count', -1) do
      delete :destroy, id: @drought_user
    end

    assert_redirected_to drought_users_path
  end
end
