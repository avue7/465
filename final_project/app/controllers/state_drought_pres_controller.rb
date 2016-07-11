class StateDroughtPresController < ApplicationController
  before_action :set_state_drought_pre, only: [:show, :edit, :update, :destroy]

  # GET /state_drought_pres
  # GET /state_drought_pres.json
  def index
    @state_drought_pres = StateDroughtPre.all
  end

  # GET /state_drought_pres/1
  # GET /state_drought_pres/1.json
  def show
  end

  # GET /state_drought_pres/new
  def new
    @state_drought_pre = StateDroughtPre.new
  end

  # GET /state_drought_pres/1/edit
  def edit
  end

  # POST /state_drought_pres
  # POST /state_drought_pres.json
  def create
    @state_drought_pre = StateDroughtPre.new(state_drought_pre_params)

    respond_to do |format|
      if @state_drought_pre.save
        format.html { redirect_to @state_drought_pre, notice: 'State drought pre was successfully created.' }
        format.json { render :show, status: :created, location: @state_drought_pre }
      else
        format.html { render :new }
        format.json { render json: @state_drought_pre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_drought_pres/1
  # PATCH/PUT /state_drought_pres/1.json
  def update
    respond_to do |format|
      if @state_drought_pre.update(state_drought_pre_params)
        format.html { redirect_to @state_drought_pre, notice: 'State drought pre was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_drought_pre }
      else
        format.html { render :edit }
        format.json { render json: @state_drought_pre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_drought_pres/1
  # DELETE /state_drought_pres/1.json
  def destroy
    @state_drought_pre.destroy
    respond_to do |format|
      format.html { redirect_to state_drought_pres_url, notice: 'State drought pre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_drought_pre
      @state_drought_pre = StateDroughtPre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_drought_pre_params
      params.require(:state_drought_pre).permit(:climate_id_id, :state_abbreviation_id)
    end
end
