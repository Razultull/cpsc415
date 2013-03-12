require 'test_helper'

class WoDsControllerTest < ActionController::TestCase
  setup do
    @wo_d = wo_ds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wo_ds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wo_d" do
    assert_difference('WoD.count') do
      post :create, wo_d: { Name: @wo_d.Name, NumberOfDaysPerWeek: @wo_d.NumberOfDaysPerWeek, NumberOfExercises: @wo_d.NumberOfExercises, TimeNeeded: @wo_d.TimeNeeded }
    end

    assert_redirected_to wo_d_path(assigns(:wo_d))
  end

  test "should show wo_d" do
    get :show, id: @wo_d
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wo_d
    assert_response :success
  end

  test "should update wo_d" do
    put :update, id: @wo_d, wo_d: { Name: @wo_d.Name, NumberOfDaysPerWeek: @wo_d.NumberOfDaysPerWeek, NumberOfExercises: @wo_d.NumberOfExercises, TimeNeeded: @wo_d.TimeNeeded }
    assert_redirected_to wo_d_path(assigns(:wo_d))
  end

  test "should destroy wo_d" do
    assert_difference('WoD.count', -1) do
      delete :destroy, id: @wo_d
    end

    assert_redirected_to wo_ds_path
  end
end
