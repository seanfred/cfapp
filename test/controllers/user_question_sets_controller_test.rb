require 'test_helper'

class UserQuestionSetsControllerTest < ActionController::TestCase
  setup do
    @user_question_set = user_question_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_question_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_question_set" do
    assert_difference('UserQuestionSet.count') do
      post :create, user_question_set: { created_at: @user_question_set.created_at, question_set_id: @user_question_set.question_set_id, updated_at: @user_question_set.updated_at, user_id: @user_question_set.user_id }
    end

    assert_redirected_to user_question_set_path(assigns(:user_question_set))
  end

  test "should show user_question_set" do
    get :show, id: @user_question_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_question_set
    assert_response :success
  end

  test "should update user_question_set" do
    patch :update, id: @user_question_set, user_question_set: { created_at: @user_question_set.created_at, question_set_id: @user_question_set.question_set_id, updated_at: @user_question_set.updated_at, user_id: @user_question_set.user_id }
    assert_redirected_to user_question_set_path(assigns(:user_question_set))
  end

  test "should destroy user_question_set" do
    assert_difference('UserQuestionSet.count', -1) do
      delete :destroy, id: @user_question_set
    end

    assert_redirected_to user_question_sets_path
  end
end
