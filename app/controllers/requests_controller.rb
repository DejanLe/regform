class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create 
    @client = Client.find(params[:client_id])
    @request = @client.requests.create(params[:request].permit(:date_of_request, :new_account, :change_privileges, :change_privileges, :disable_account, :re_enable_account, :mc, :hmfp, :apg, :ap_hmfp, :mc_corporate, :other, :specify, :client_id))

    respond_to do |format|
      if @request.save
        format.html { redirect_to  @client, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    @client = Client.find(params[:client_id])
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @client = Client.find(params[:client_id])
    @request.destroy
    respond_to do |format|
      format.html { redirect_to @client, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:date_of_request, :new_account, :change_privileges, :change_privileges, :disable_account, :re_enable_account, :mc, :hmfp, :apg, :ap_hmfp, :mc_corporate, :other, :specify, :client_id)
    end
end
