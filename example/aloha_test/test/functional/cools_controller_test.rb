require 'test_helper'

class CoolsControllerTest < ActionController::TestCase
  setup do
    @cool = cools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cool" do
    assert_difference('Cool.count') do
      post :create, cool: @cool.attributes
    end

    assert_redirected_to cool_path(assigns(:cool))
  end

  test "should show cool" do
    get :show, id: @cool.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cool.to_param
    assert_response :success
  end

  test "should update cool" do
    put :update, id: @cool.to_param, cool: @cool.attributes
    assert_redirected_to cool_path(assigns(:cool))
  end

  test "should destroy cool" do
    assert_difference('Cool.count', -1) do
      delete :destroy, id: @cool.to_param
    end

    assert_redirected_to cools_path
  end
end
