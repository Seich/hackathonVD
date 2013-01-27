require 'test_helper'

class SchoolingsControllerTest < ActionController::TestCase
  setup do
    @schooling = schoolings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schoolings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schooling" do
    assert_difference('Schooling.count') do
      post :create, schooling: { level: @schooling.level }
    end

    assert_redirected_to schooling_path(assigns(:schooling))
  end

  test "should show schooling" do
    get :show, id: @schooling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schooling
    assert_response :success
  end

  test "should update schooling" do
    put :update, id: @schooling, schooling: { level: @schooling.level }
    assert_redirected_to schooling_path(assigns(:schooling))
  end

  test "should destroy schooling" do
    assert_difference('Schooling.count', -1) do
      delete :destroy, id: @schooling
    end

    assert_redirected_to schoolings_path
  end
end
