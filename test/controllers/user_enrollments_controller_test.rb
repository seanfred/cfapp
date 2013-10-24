require 'test_helper'

class UserEnrollmentsControllerTest < ActionController::TestCase
  setup do
    @user_enrollment = user_enrollments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_enrollments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_enrollment" do
    assert_difference('UserEnrollment.count') do
      post :create, user_enrollment: { created_at: @user_enrollment.created_at, offering_id: @user_enrollment.offering_id, status: @user_enrollment.status, updated_at: @user_enrollment.updated_at, user_id: @user_enrollment.user_id }
    end

    assert_redirected_to user_enrollment_path(assigns(:user_enrollment))
  end

  test "should show user_enrollment" do
    get :show, id: @user_enrollment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_enrollment
    assert_response :success
  end

  test "should update user_enrollment" do
    patch :update, id: @user_enrollment, user_enrollment: { created_at: @user_enrollment.created_at, offering_id: @user_enrollment.offering_id, status: @user_enrollment.status, updated_at: @user_enrollment.updated_at, user_id: @user_enrollment.user_id }
    assert_redirected_to user_enrollment_path(assigns(:user_enrollment))
  end

  test "should destroy user_enrollment" do
    assert_difference('UserEnrollment.count', -1) do
      delete :destroy, id: @user_enrollment
    end

    assert_redirected_to user_enrollments_path
  end
end
