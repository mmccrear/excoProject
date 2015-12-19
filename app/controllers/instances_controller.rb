class InstancesController < ApplicationController
  before_action :set_instance, only: [:show, :edit, :update, :destroy]

  # GET /instances
  # GET /instances.json
  def index
    @instances = Instance.all
  end

  # GET /instances/1
  # GET /instances/1.json
  def show
    @instructors = @instance.instructor_apps.take(2)
    @instructor1 = @instructors.first
    if @instructors.first != @instructors.last
      @instructor2 = @instructors.last
    else
      @instructor2 = nil
    end
  end

  # GET /instances/new
  def new
    @instance = Instance.new
    @courses = Course.all
  end

  # GET /instances/1/edit
  def edit
  end

  # POST /instances
  # POST /instances.json
  def create
    @instance = Instance.new(instance_params)
    if params[:title] != ""
        @instance.title = params[:title]
        @instance.renewal = true
        @course = Course.where(title: params[:title])
        #need to set this up
        #@course.instances << @instance
    else
      @course = Course.new(title: params[:new_title], active: true)
      @instance.renewal = false
      @course.save()
      @instance.title = params[:new_title]
      #@course.instances << @instance
    end
    

    respond_to do |format|
      if @instance.save
        format.html { redirect_to @instance, notice: 'Instance was successfully created.' }
        format.json { render :show, status: :created, location: @instance }
      else
        format.html { render :new }
        format.json { render json: @instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instances/1
  # PATCH/PUT /instances/1.json
  def update
    respond_to do |format|
      if @instance.update(instance_params)
        format.html { redirect_to @instance, notice: 'Instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @instance }
      else
        format.html { render :edit }
        format.json { render json: @instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instances/1
  # DELETE /instances/1.json
  def destroy
    @instance.destroy
    respond_to do |format|
      format.html { redirect_to instances_url, notice: 'Instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instance
      @instance = Instance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instance_params
      params.require(:instance).permit(:year, :semester, :section)
    end
end
