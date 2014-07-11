require 'test_helper'

class FightingsControllerTest < ActionController::TestCase
  setup do
    @fighting = fightings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fightings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fighting" do
    assert_difference('Fighting.count') do
      post :create, fighting: { name: @fighting.name }
    end

    assert_redirected_to fighting_path(assigns(:fighting))
  end

  test "should show fighting" do
    get :show, id: @fighting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fighting
    assert_response :success
  end

  test "should update fighting" do
    patch :update, id: @fighting, fighting: { name: @fighting.name }
    assert_redirected_to fighting_path(assigns(:fighting))
  end

  test "should destroy fighting" do
    assert_difference('Fighting.count', -1) do
      delete :destroy, id: @fighting
    end

    assert_redirected_to fightings_path
  end
end
