require 'test_helper'

class ComplaintsControllerTest < ActionController::TestCase
  setup do
    @complaint = complaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complaint" do
    assert_difference('Complaint.count') do
      post :create, complaint: { description: @complaint.description, first_hearing_date: @complaint.first_hearing_date, incident_date: @complaint.incident_date, observations: @complaint.observations, second_hearing_date: @complaint.second_hearing_date, sentencing_date: @complaint.sentencing_date, status: @complaint.status }
    end

    assert_redirected_to complaint_path(assigns(:complaint))
  end

  test "should show complaint" do
    get :show, id: @complaint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @complaint
    assert_response :success
  end

  test "should update complaint" do
    put :update, id: @complaint, complaint: { description: @complaint.description, first_hearing_date: @complaint.first_hearing_date, incident_date: @complaint.incident_date, observations: @complaint.observations, second_hearing_date: @complaint.second_hearing_date, sentencing_date: @complaint.sentencing_date, status: @complaint.status }
    assert_redirected_to complaint_path(assigns(:complaint))
  end

  test "should destroy complaint" do
    assert_difference('Complaint.count', -1) do
      delete :destroy, id: @complaint
    end

    assert_redirected_to complaints_path
  end
end
