class MuridsController < ApplicationController
  before_action :set_murid, only: [:show, :edit, :update, :destroy]

  # GET /murids
  # GET /murids.json
  def index
    @murids = Murid.all
  end

  # GET /murids/1
  # GET /murids/1.json
  def show
  end

  # GET /murids/new
  def new
    @murid = Murid.new
  end

  # GET /murids/1/edit
  def edit
  end

  # POST /murids
  # POST /murids.json
  def create
    @murid = Murid.new(murid_params)

    respond_to do |format|
      if @murid.save
        format.html { redirect_to @murid, notice: 'Murid was successfully created.' }
        format.json { render :show, status: :created, location: @murid }
      else
        format.html { render :new }
        format.json { render json: @murid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /murids/1
  # PATCH/PUT /murids/1.json
  def update
    respond_to do |format|
      if @murid.update(murid_params)
        format.html { redirect_to @murid, notice: 'Murid was successfully updated.' }
        format.json { render :show, status: :ok, location: @murid }
      else
        format.html { render :edit }
        format.json { render json: @murid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /murids/1
  # DELETE /murids/1.json
  def destroy
    @murid.destroy
    respond_to do |format|
      format.html { redirect_to murids_url, notice: 'Murid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_murid
      @murid = Murid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def murid_params
      params.require(:murid).permit(:nim, :nama, :kelas, :alamat, :major_id, :lecture_id)
    end
end
