require 'test_helper'

class RegistraionRolesControllerTest < ActionController::TestCase
  setup do
    @registraion_role = registraion_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registraion_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registraion_role" do
    assert_difference('RegistraionRole.count') do
      post :create, registraion_role: { email: @registraion_role.email, name: @registraion_role.name }
    end

    assert_redirected_to registraion_role_path(assigns(:registraion_role))
  end

  test "should show registraion_role" do
    get :show, id: @registraion_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registraion_role
    assert_response :success
  end

  test "should update registraion_role" do
    patch :update, id: @registraion_role, registraion_role: { email: @registraion_role.email, name: @registraion_role.name }
    assert_redirected_to registraion_role_path(assigns(:registraion_role))
  end

  test "should destroy registraion_role" do
    assert_difference('RegistraionRole.count', -1) do
      delete :destroy, id: @registraion_role
    end

    assert_redirected_to registraion_roles_path
  end
end
