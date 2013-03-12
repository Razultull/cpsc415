require 'test_helper'

class GymnasiaControllerTest < ActionController::TestCase
  setup do
    @gymnasium = gymnasia(:one)
    @gymnasium.Name = 'unique name'
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gymnasia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gymnasium" do
    assert_difference('Gymnasium.count') do
      post :create, gymnasium: { City: @gymnasium.City, Name: @gymnasium.Name, StreetAddress: @gymnasium.StreetAddress }
    end

    assert_redirected_to gymnasium_path(assigns(:gymnasium))
  end

  test "should show gymnasium" do
    get :show, id: @gymnasium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gymnasium
    assert_response :success
  end

 
  test "should update gymnasium" do
    put :update, id: @gymnasium, gymnasium: { City: @gymnasium.City, Name: @gymnasium.Name, StreetAddress: @gymnasium.StreetAddress }
    assert_redirected_to gymnasium_path(assigns(:gymnasium))
  end

  test "should destroy gymnasium" do
    assert_difference('Gymnasium.count', -1) do
      delete :destroy, id: @gymnasium
    end

    assert_redirected_to gymnasia_path
  end
end
