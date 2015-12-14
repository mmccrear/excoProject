require 'test_helper'

class InstructorAppsControllerTest < ActionController::TestCase
  setup do
    @instructor_app = instructor_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instructor_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instructor_app" do
    assert_difference('InstructorApp.count') do
      post :create, instructor_app: { course: @instructor_app.course, exco_problems: @instructor_app.exco_problems, excos_taken: @instructor_app.excos_taken, problems: @instructor_app.problems, qualifications: @instructor_app.qualifications, safe_space: @instructor_app.safe_space, semester: @instructor_app.semester, status: @instructor_app.status, teaching_exp: @instructor_app.teaching_exp, tnumber: @instructor_app.tnumber, year: @instructor_app.year }
    end

    assert_redirected_to instructor_app_path(assigns(:instructor_app))
  end

  test "should show instructor_app" do
    get :show, id: @instructor_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instructor_app
    assert_response :success
  end

  test "should update instructor_app" do
    patch :update, id: @instructor_app, instructor_app: { course: @instructor_app.course, exco_problems: @instructor_app.exco_problems, excos_taken: @instructor_app.excos_taken, problems: @instructor_app.problems, qualifications: @instructor_app.qualifications, safe_space: @instructor_app.safe_space, semester: @instructor_app.semester, status: @instructor_app.status, teaching_exp: @instructor_app.teaching_exp, tnumber: @instructor_app.tnumber, year: @instructor_app.year }
    assert_redirected_to instructor_app_path(assigns(:instructor_app))
  end

  test "should destroy instructor_app" do
    assert_difference('InstructorApp.count', -1) do
      delete :destroy, id: @instructor_app
    end

    assert_redirected_to instructor_apps_path
  end
end
