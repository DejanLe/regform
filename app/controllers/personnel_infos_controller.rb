class PersonnelInfosController < ApplicationController
  before_action :set_personnel_info, only: [:show, :edit, :update, :destroy]

  # GET /personnel_infos
  # GET /personnel_infos.json
  def index
    @personnel_infos = PersonnelInfo.all
  end

  # GET /personnel_infos/1
  # GET /personnel_infos/1.json
  def show
  end

  # GET /personnel_infos/new
  def new
    @personnel_info = PersonnelInfo.new
  end

  # GET /personnel_infos/1/edit
  def edit
  end

  # POST /personnel_infos
  # POST /personnel_infos.json
  def create
    @personnel_info = PersonnelInfo.new(personnel_info_params)

    respond_to do |format|
      if @personnel_info.save
        format.html { redirect_to @personnel_info, notice: 'Personnel info was successfully created.' }
        format.json { render :show, status: :created, location: @personnel_info }
      else
        format.html { render :new }
        format.json { render json: @personnel_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personnel_infos/1
  # PATCH/PUT /personnel_infos/1.json
  def update
    respond_to do |format|
      if @personnel_info.update(personnel_info_params)
        format.html { redirect_to @personnel_info, notice: 'Personnel info was successfully updated.' }
        format.json { render :show, status: :ok, location: @personnel_info }
      else
        format.html { render :edit }
        format.json { render json: @personnel_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personnel_infos/1
  # DELETE /personnel_infos/1.json
  def destroy
    @personnel_info.destroy
    respond_to do |format|
      format.html { redirect_to personnel_infos_url, notice: 'Personnel info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personnel_info
      @personnel_info = PersonnelInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personnel_info_params
      params.require(:personnel_info).permit(:last_name, :first_name, :middle_initial, :title, :employee_id, :D_O_B, :SSN_last_4_digit, :sex_male, :sex_female, :manager_sponsor__home_dept_id, :Dept_Name, :Job_Code_, :HCW1, :HCW2, :HCW3, :IHCW, :NHCW, :Business, :Clinical, :Education, :Student, :Research, :Clinical_Research, :Research_Collaborator_collab_type, :Clinical_Research, :Basic_Research, :Full_Time, :Part_Time, :Per_Diem, :Temp_Student_Contract, :Empl_begin_date, :Empl_end_date, :Work_Location_Building_Floor_Room, :Work_Phone, :Practice_Address_if_applicable_street_city, :client_id)
    end
end
