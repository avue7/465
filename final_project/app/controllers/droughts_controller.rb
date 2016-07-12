class DroughtsController < ApplicationController
  before_action :set_drought, only: [:show, :edit, :update, :destroy]

  # GET /droughts
  def index
    @states = State.all
    @droughts = Drought.all
    @state_names = []
    @droughts.each do |drought|
      @states.each do |state|
        if drought.state_id == state.id
          @state_names.push(state.state_name)
        end
      end
     end
   # @drought = Drought.find(params[:id])i
    @drought = Drought.new
    @user = current_user
  end

  # GET /droughts/1
  def show
    @droughts = Drought.all
    @drought = Drought.find(params[:id])
  end

  # GET /droughts/new
  def new
    @drought = Drought.new
  end

  # GET /droughts/1/edit
  def edit
   @states = State.all
  end

  # POST /droughts
  # POST /droughts.json
  def create
    @drought = Drought.new(drought_params)
    @drought.state_id = params[:state_id]

      if @drought.save
        redirect_to droughts_path, notice: "Drought successfuly created."
      else
        redirect_to droughts_path, notice: "Droughts not created."
      end
  end

  # PATCH/PUT /droughts/1
  # PATCH/PUT /droughts/1.json
  def update
        if @drought.update(drought_params)
        redirect_to droughts_path, notice: "Drought successfuly edited."
      else
        redirect_to droughts_path, notice: "Droughts not created."
      end

  end

  # DELETE /droughts/1
  # DELETE /droughts/1.json
  def destroy
    @drought.destroy
    respond_to do |format|
      format.html { redirect_to droughts_url, notice: 'Drought was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drought
      @drought = Drought.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drought_params
      params.require(:drought).permit(:climate_id, :drought_severity, :year, :state_abbreviation)
    end
end
