require 'test_helper'

class MailgroupsControllerTest < ActionController::TestCase
  setup do
    @mailgroup = mailgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailgroup" do
    assert_difference('Mailgroup.count') do
      post :create, :mailgroup => @mailgroup.attributes
    end

    assert_redirected_to mailgroup_path(assigns(:mailgroup))
  end

  test "should show mailgroup" do
    get :show, :id => @mailgroup.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mailgroup.to_param
    assert_response :success
  end

  test "should update mailgroup" do
    put :update, :id => @mailgroup.to_param, :mailgroup => @mailgroup.attributes
    assert_redirected_to mailgroup_path(assigns(:mailgroup))
  end

  test "should destroy mailgroup" do
    assert_difference('Mailgroup.count', -1) do
      delete :destroy, :id => @mailgroup.to_param
    end

    assert_redirected_to mailgroups_path
  end
end
