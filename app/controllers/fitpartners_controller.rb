class FitpartnersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_fitpartner, only: [:show, :edit, :update, :destroy]

  # GET /fitpartners
  # GET /fitpartners.json
  def index
    @fitpartners = Fitpartner.all
    
    @hash = Gmaps4rails.build_markers(@fitpartners) do |fitpartner, marker|
    marker.lat fitpartner.latitude
    marker.lng fitpartner.longitude
    marker.infowindow fitpartner.especialidad
    end
  end

  # GET /fitpartners/1
  # GET /fitpartners/1.json
  def show
    #@friendship = Friendship.where(fitpartner_user: params[:id])
  end

  # GET /fitpartners/new
  def new
    @fitpartner = Fitpartner.new
  end

  # GET /fitpartners/1/edit
  def edit
  end

  # POST /fitpartners
  # POST /fitpartners.json
  def create
    @fitpartner = Fitpartner.new(fitpartner_params)

    respond_to do |format|
      if @fitpartner.save
        format.html { redirect_to @fitpartner, notice: 'Fitpartner was successfully created.' }
        format.json { render :show, status: :created, location: @fitpartner }
      else
        format.html { render :new }
        format.json { render json: @fitpartner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fitpartners/1
  # PATCH/PUT /fitpartners/1.json
  def update
    respond_to do |format|
      if @fitpartner.update(fitpartner_params)
        format.html { redirect_to @fitpartner, notice: 'Fitpartner was successfully updated.' }
        format.json { render :show, status: :ok, location: @fitpartner }
      else
        format.html { render :edit }
        format.json { render json: @fitpartner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fitpartners/1
  # DELETE /fitpartners/1.json
  def destroy
    @fitpartner.destroy
    respond_to do |format|
      format.html { redirect_to fitpartners_url, notice: 'Fitpartner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fitpartner
      @fitpartner = Fitpartner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fitpartner_params
      params.require(:fitpartner).permit(:user_id, :especialidad, :costo, :tipo_costo, :disponibilidad, :descripcion, :address, :latitude, :longitude)
    end
end
