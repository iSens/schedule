require 'test_helper'

class EmailSchedulesControllerTest < ActionController::TestCase
  setup do
    @email_schedule = email_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:email_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create email_schedule" do
    assert_difference('EmailSchedule.count') do
      post :create, email_schedule: @email_schedule.attributes
    end

    assert_redirected_to email_schedule_path(assigns(:email_schedule))
  end

  test "should show email_schedule" do
    get :show, id: @email_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @email_schedule
    assert_response :success
  end

  test "should update email_schedule" do
    put :update, id: @email_schedule, email_schedule: @email_schedule.attributes
    assert_redirected_to email_schedule_path(assigns(:email_schedule))
  end

  test "should destroy email_schedule" do
    assert_difference('EmailSchedule.count', -1) do
      delete :destroy, id: @email_schedule
    end

    assert_redirected_to email_schedules_path
  end
end
