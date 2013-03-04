require 'test_helper'

class PersonalWodsControllerTest < ActionController::TestCase
  setup do
    @personal_wod = personal_wods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_wods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_wod" do
    assert_difference('PersonalWod.count') do
      post :create, personal_wod: {  Name: @personal_wod. Name, NumberOfDaysPerWeek: @personal_wod.NumberOfDaysPerWeek, PersonalBest: @personal_wod.PersonalBest, Repetitions: @personal_wod.Repetitions, TimeTaken: @personal_wod.TimeTaken, WeightAmount: @personal_wod.WeightAmount }
    end

    assert_redirected_to personal_wod_path(assigns(:personal_wod))
  end

  test "should show personal_wod" do
    get :show, id: @personal_wod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_wod
    assert_response :success
  end

  test "should update personal_wod" do
    put :update, id: @personal_wod, personal_wod: {  Name: @personal_wod. Name, NumberOfDaysPerWeek: @personal_wod.NumberOfDaysPerWeek, PersonalBest: @personal_wod.PersonalBest, Repetitions: @personal_wod.Repetitions, TimeTaken: @personal_wod.TimeTaken, WeightAmount: @personal_wod.WeightAmount }
    assert_redirected_to personal_wod_path(assigns(:personal_wod))
  end

  test "should destroy personal_wod" do
    assert_difference('PersonalWod.count', -1) do
      delete :destroy, id: @personal_wod
    end

    assert_redirected_to personal_wods_path
  end
end
