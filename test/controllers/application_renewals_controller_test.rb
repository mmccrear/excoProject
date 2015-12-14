require 'test_helper'

class ApplicationRenewalsControllerTest < ActionController::TestCase
  setup do
    @application_renewal = application_renewals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:application_renewals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create application_renewal" do
    assert_difference('ApplicationRenewal.count') do
      post :create, application_renewal: { capactiy: @application_renewal.capactiy, changes: @application_renewal.changes, credits: @application_renewal.credits, engagement: @application_renewal.engagement, name: @application_renewal.name, problems: @application_renewal.problems, semester: @application_renewal.semester, year: @application_renewal.year }
    end

    assert_redirected_to application_renewal_path(assigns(:application_renewal))
  end

  test "should show application_renewal" do
    get :show, id: @application_renewal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @application_renewal
    assert_response :success
  end

  test "should update application_renewal" do
    patch :update, id: @application_renewal, application_renewal: { capactiy: @application_renewal.capactiy, changes: @application_renewal.changes, credits: @application_renewal.credits, engagement: @application_renewal.engagement, name: @application_renewal.name, problems: @application_renewal.problems, semester: @application_renewal.semester, year: @application_renewal.year }
    assert_redirected_to application_renewal_path(assigns(:application_renewal))
  end

  test "should destroy application_renewal" do
    assert_difference('ApplicationRenewal.count', -1) do
      delete :destroy, id: @application_renewal
    end

    assert_redirected_to application_renewals_path
  end
end
