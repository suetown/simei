require 'test_helper'

class PcorpsControllerTest < ActionController::TestCase
  setup do
    @pcorp = pcorps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pcorps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pcorp" do
    assert_difference('Pcorp.count') do
      post :create, :pcorp => @pcorp.attributes
    end

    assert_redirected_to pcorp_path(assigns(:pcorp))
  end

  test "should show pcorp" do
    get :show, :id => @pcorp.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pcorp.to_param
    assert_response :success
  end

  test "should update pcorp" do
    put :update, :id => @pcorp.to_param, :pcorp => @pcorp.attributes
    assert_redirected_to pcorp_path(assigns(:pcorp))
  end

  test "should destroy pcorp" do
    assert_difference('Pcorp.count', -1) do
      delete :destroy, :id => @pcorp.to_param
    end

    assert_redirected_to pcorps_path
  end
end
