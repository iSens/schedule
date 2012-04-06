require 'test_helper'

class CaptixesControllerTest < ActionController::TestCase
  setup do
    @captix = captixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:captixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create captix" do
    assert_difference('Captix.count') do
      post :create, captix: @captix.attributes
    end

    assert_redirected_to captix_path(assigns(:captix))
  end

  test "should show captix" do
    get :show, id: @captix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @captix
    assert_response :success
  end

  test "should update captix" do
    put :update, id: @captix, captix: @captix.attributes
    assert_redirected_to captix_path(assigns(:captix))
  end

  test "should destroy captix" do
    assert_difference('Captix.count', -1) do
      delete :destroy, id: @captix
    end

    assert_redirected_to captixes_path
  end
end
