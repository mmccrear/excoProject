class NewCoursesController < ApplicationController
  before_action :set_new_course, only: [:show, :edit, :update, :destroy]

  # GET /new_courses
  # GET /new_courses.json
  def index
    @new_courses = NewCourse.all
  end

  # GET /new_courses/1
  # GET /new_courses/1.json
  def show
    @new_course = NewCourse.find(params[:id])
    @instructor1 = @new_course.instructor_apps.first()
    if @new_course.instructor_apps.at(1) != nil
      @instructor2 = @new_course.instructor_apps.at(1)
    else
      @instructor2 = false
    end
    

  end

  # GET /new_courses/new
  def new
    @new_course = NewCourse.new
    @instances = Instance.all     #eventually filter by users
    @instructors1 = InstructorApp.all   #don't know if we need to do this here? maybe in instance?
    @instructors2 = InstructorApp.all
    @current_user = current_user
  end

  # GET /new_courses/1/edit
  def edit
    @instances = Instance.all     #eventually filter by users
    @instructors1 = InstructorApp.all   #don't know if we need to do this here? maybe in instance?
    @instructors2 = InstructorApp.all
  end

  # POST /new_courses
  # POST /new_courses.json
  def create
    
    @new_course = NewCourse.new(new_course_params)
    @new_course.name = params[:name]
    #only saving 1 instructor right now... not sure where/how to save a second instructor.
    #@instructor_app1 = InstructorApp.find(params[:instructor1])
    @instance = Instance.where(title: params[:name]).take
    @instance.new_course= @new_course
    @instance.save()
    
    

    respond_to do |format|
      if @new_course.save
        format.html { redirect_to @new_course, notice: 'New course was successfully created.' }
        format.json { render :show, status: :created, location: @new_course }
      else
        format.html { render :new }
        format.json { render json: @new_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_courses/1
  # PATCH/PUT /new_courses/1.json
  def update
    respond_to do |format|
      if @new_course.update(new_course_params)
        format.html { redirect_to @new_course, notice: 'New course was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_course }
      else
        format.html { render :edit }
        format.json { render json: @new_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_courses/1
  # DELETE /new_courses/1.json
  def destroy
    @new_course.destroy
    respond_to do |format|
      format.html { redirect_to new_courses_url, notice: 'New course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_course
      @new_course = NewCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_course_params
      params.require(:new_course).permit(:name, :semester, :year, :instructor1, :instructor2, :divison, :description, :why_exco, :evaluations, :credits, :hours_meet, :hours_outside, :capactiy, :signature)
    end
end
