require 'test_helper'

class ChosenWorkoutsControllerTest < ActionController::TestCase
  setup do
    @chosen_workout = chosen_workouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chosen_workouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chosen_workout" do
    assert_difference('ChosenWorkout.count') do
      post :create, chosen_workout: {  }
    end

    assert_redirected_to chosen_workout_path(assigns(:chosen_workout))
  end

  test "should show chosen_workout" do
    get :show, id: @chosen_workout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chosen_workout
    assert_response :success
  end

  test "should update chosen_workout" do
    put :update, id: @chosen_workout, chosen_workout: {  }
    assert_redirected_to chosen_workout_path(assigns(:chosen_workout))
  end

  test "should destroy chosen_workout" do
    assert_difference('ChosenWorkout.count', -1) do
      delete :destroy, id: @chosen_workout
    end

    assert_redirected_to chosen_workouts_path
  end
end
