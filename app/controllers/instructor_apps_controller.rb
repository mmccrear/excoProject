class InstructorAppsController < ApplicationController
  before_action :set_instructor_app, only: [:show, :edit, :update, :destroy]

  # GET /instructor_apps
  # GET /instructor_apps.json
  def index
    @instructor_apps = InstructorApp.all
  end

  # GET /instructor_apps/1
  # GET /instructor_apps/1.json
  def show
  end

  # GET /instructor_apps/new
  def new
    @instructor_app = InstructorApp.new
    @instructors = Instructor.all    #filter by users
    @instances = Instance.all        #filter by users
  end

  # GET /instructor_apps/1/edit
  def edit
    @instructors = Instructor.all    #filter by users
    @instances = Instance.all        #filter by users
  end

  # POST /instructor_apps
  # POST /instructor_apps.json
  def create
    @instructor_app = InstructorApp.new(instructor_app_params)
    @instructor_app.course = params[:course]
    respond_to do |format|
      if @instructor_app.save
        format.html { redirect_to @instructor_app, notice: 'Instructor app was successfully created.' }
        format.json { render :show, status: :created, location: @instructor_app }
      else
        format.html { render :new }
        format.json { render json: @instructor_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instructor_apps/1
  # PATCH/PUT /instructor_apps/1.json
  def update
    respond_to do |format|
      if @instructor_app.update(instructor_app_params)
        format.html { redirect_to @instructor_app, notice: 'Instructor app was successfully updated.' }
        format.json { render :show, status: :ok, location: @instructor_app }
      else
        format.html { render :edit }
        format.json { render json: @instructor_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructor_apps/1
  # DELETE /instructor_apps/1.json
  def destroy
    @instructor_app.destroy
    respond_to do |format|
      format.html { redirect_to instructor_apps_url, notice: 'Instructor app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor_app
      @instructor_app = InstructorApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instructor_app_params
      params.require(:instructor_app).permit(:course, :year, :semester, :tnumber, :status, :qualifications, :teaching_exp, :problems, :excos_taken, :exco_problems, :safe_space, :instance_id)
    end
end
