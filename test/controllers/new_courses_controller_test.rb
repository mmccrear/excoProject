require 'test_helper'

class NewCoursesControllerTest < ActionController::TestCase
  setup do
    @new_course = new_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_course" do
    assert_difference('NewCourse.count') do
      post :create, new_course: { capactiy: @new_course.capactiy, credits: @new_course.credits, description: @new_course.description, divison: @new_course.divison, evaluations: @new_course.evaluations, hours_meet: @new_course.hours_meet, hours_outside: @new_course.hours_outside, name: @new_course.name, semester: @new_course.semester, signature: @new_course.signature, why_exco: @new_course.why_exco, year: @new_course.year }
    end

    assert_redirected_to new_course_path(assigns(:new_course))
  end

  test "should show new_course" do
    get :show, id: @new_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_course
    assert_response :success
  end

  test "should update new_course" do
    patch :update, id: @new_course, new_course: { capactiy: @new_course.capactiy, credits: @new_course.credits, description: @new_course.description, divison: @new_course.divison, evaluations: @new_course.evaluations, hours_meet: @new_course.hours_meet, hours_outside: @new_course.hours_outside, name: @new_course.name, semester: @new_course.semester, signature: @new_course.signature, why_exco: @new_course.why_exco, year: @new_course.year }
    assert_redirected_to new_course_path(assigns(:new_course))
  end

  test "should destroy new_course" do
    assert_difference('NewCourse.count', -1) do
      delete :destroy, id: @new_course
    end

    assert_redirected_to new_courses_path
  end
end
