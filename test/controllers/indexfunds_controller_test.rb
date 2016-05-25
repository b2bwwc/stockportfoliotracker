require 'test_helper'

class IndexfundsControllerTest < ActionController::TestCase
  setup do
    @indexfund = indexfunds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indexfunds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indexfund" do
    assert_difference('Indexfund.count') do
      post :create, indexfund: {  }
    end

    assert_redirected_to indexfund_path(assigns(:indexfund))
  end

  test "should show indexfund" do
    get :show, id: @indexfund
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indexfund
    assert_response :success
  end

  test "should update indexfund" do
    patch :update, id: @indexfund, indexfund: {  }
    assert_redirected_to indexfund_path(assigns(:indexfund))
  end

  test "should destroy indexfund" do
    assert_difference('Indexfund.count', -1) do
      delete :destroy, id: @indexfund
    end

    assert_redirected_to indexfunds_path
  end
end
