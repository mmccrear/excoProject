class ApplicationRenewalsController < ApplicationController
  before_action :set_application_renewal, only: [:show, :edit, :update, :destroy]

  # GET /application_renewals
  # GET /application_renewals.json
  def index
    @application_renewals = ApplicationRenewal.all
  end

  # GET /application_renewals/1
  # GET /application_renewals/1.json
  def show
  end

  # GET /application_renewals/new
  def new
    @application_renewal = ApplicationRenewal.new
  end

  # GET /application_renewals/1/edit
  def edit
  end

  # POST /application_renewals
  # POST /application_renewals.json
  def create
    @application_renewal = ApplicationRenewal.new(application_renewal_params)

    respond_to do |format|
      if @application_renewal.save
        format.html { redirect_to @application_renewal, notice: 'Application renewal was successfully created.' }
        format.json { render :show, status: :created, location: @application_renewal }
      else
        format.html { render :new }
        format.json { render json: @application_renewal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_renewals/1
  # PATCH/PUT /application_renewals/1.json
  def update
    respond_to do |format|
      if @application_renewal.update(application_renewal_params)
        format.html { redirect_to @application_renewal, notice: 'Application renewal was successfully updated.' }
        format.json { render :show, status: :ok, location: @application_renewal }
      else
        format.html { render :edit }
        format.json { render json: @application_renewal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_renewals/1
  # DELETE /application_renewals/1.json
  def destroy
    @application_renewal.destroy
    respond_to do |format|
      format.html { redirect_to application_renewals_url, notice: 'Application renewal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_renewal
      @application_renewal = ApplicationRenewal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_renewal_params
      params.require(:application_renewal).permit(:name, :semester, :year, :credits, :capactiy, :problems, :dbowie, :engagement)
    end
end
