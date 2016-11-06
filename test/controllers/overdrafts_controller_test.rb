require 'test_helper'

class OverdraftsControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
    @overdraft = overdrafts(:one)
  end

  test "should get index" do
    get :index, params: { employee_id: @employee }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { employee_id: @employee }
    assert_response :success
  end

  test "should create overdraft" do
    assert_difference('Overdraft.count') do
      post :create, params: { employee_id: @employee, overdraft: @overdraft.attributes }
    end

    assert_redirected_to employee_overdraft_path(@employee, Overdraft.last)
  end

  test "should show overdraft" do
    get :show, params: { employee_id: @employee, id: @overdraft }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { employee_id: @employee, id: @overdraft }
    assert_response :success
  end

  test "should update overdraft" do
    put :update, params: { employee_id: @employee, id: @overdraft, overdraft: @overdraft.attributes }
    assert_redirected_to employee_overdraft_path(@employee, Overdraft.last)
  end

  test "should destroy overdraft" do
    assert_difference('Overdraft.count', -1) do
      delete :destroy, params: { employee_id: @employee, id: @overdraft }
    end

    assert_redirected_to employee_overdrafts_path(@employee)
  end
end
