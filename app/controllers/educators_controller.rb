class EducatorsController < ApplicationController
  before_action :set_educator, only: [:show, :edit, :update, :destroy]

  # GET /educators
  # GET /educators.json
  def index
    @educators = Educator.all
  end

  # GET /educators/1
  # GET /educators/1.json
  def show
  end

  # GET /educators/new
  def new
    @educator = Educator.new
  end

  # GET /educators/1/edit
  def edit
  end

  # POST /educators
  # POST /educators.json
  def create
    @educator = Educator.new(educator_params)

    respond_to do |format|
      if @educator.save
        SignupAlertMailer.educator_notification(@educator).deliver
        format.html { redirect_to '/misc/educator_registration_conf', notice: 'Educator was successfully created.' }
        format.json { render '/misc/educator_registration_conf', status: :created, location: '/misc/educator_registration_conf' }
      else
        format.html { render :new }
        format.json { render json: @educator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educators/1
  # PATCH/PUT /educators/1.json
  def update
    respond_to do |format|
      if @educator.update(educator_params)
        format.html { redirect_to @educator, notice: 'Educator was successfully updated.' }
        format.json { render :show, status: :ok, location: @educator }
      else
        format.html { render :edit }
        format.json { render json: @educator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educators/1
  # DELETE /educators/1.json
  def destroy
    @educator.destroy
    respond_to do |format|
      format.html { redirect_to educators_url, notice: 'Educator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def registration_conf
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_educator
      @educator = Educator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def educator_params
      params.require(:educator).permit(:fname, :lname, :email, :phone, :school_job_function, :school_name, :school_location, :topics_of_interest, :message, :other)
    end
end
