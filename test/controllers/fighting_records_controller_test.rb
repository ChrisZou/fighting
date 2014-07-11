require 'test_helper'

class FightingRecordsControllerTest < ActionController::TestCase
  setup do
    @fighting_record = fighting_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fighting_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fighting_record" do
    assert_difference('FightingRecord.count') do
      post :create, fighting_record: { Fighting: @fighting_record.Fighting, dt: @fighting_record.dt, notes: @fighting_record.notes }
    end

    assert_redirected_to fighting_record_path(assigns(:fighting_record))
  end

  test "should show fighting_record" do
    get :show, id: @fighting_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fighting_record
    assert_response :success
  end

  test "should update fighting_record" do
    patch :update, id: @fighting_record, fighting_record: { Fighting: @fighting_record.Fighting, dt: @fighting_record.dt, notes: @fighting_record.notes }
    assert_redirected_to fighting_record_path(assigns(:fighting_record))
  end

  test "should destroy fighting_record" do
    assert_difference('FightingRecord.count', -1) do
      delete :destroy, id: @fighting_record
    end

    assert_redirected_to fighting_records_path
  end
end
