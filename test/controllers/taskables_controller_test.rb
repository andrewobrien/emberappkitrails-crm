require 'test_helper'

class TaskablesControllerTest < ActionController::TestCase
  setup do
    @taskable = taskables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taskables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taskable" do
    assert_difference('Taskable.count') do
      post :create, taskable: {  }
    end

    assert_redirected_to taskable_path(assigns(:taskable))
  end

  test "should show taskable" do
    get :show, id: @taskable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taskable
    assert_response :success
  end

  test "should update taskable" do
    patch :update, id: @taskable, taskable: {  }
    assert_redirected_to taskable_path(assigns(:taskable))
  end

  test "should destroy taskable" do
    assert_difference('Taskable.count', -1) do
      delete :destroy, id: @taskable
    end

    assert_redirected_to taskables_path
  end
end
