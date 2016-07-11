class DroughtsController < ApplicationController
  before_action :set_drought, only: [:show, :edit, :update, :destroy]

  # GET /droughts
  # GET /droughts.json
  def index
    @droughts = Drought.all
  end

  # GET /droughts/1
  # GET /droughts/1.json
  def show
  end

  # GET /droughts/new
  def new
    @drought = Drought.new
  end

  # GET /droughts/1/edit
  def edit
  end

  # POST /droughts
  # POST /droughts.json
  def create
    @drought = Drought.new(drought_params)

    respond_to do |format|
      if @drought.save
        format.html { redirect_to @drought, notice: 'Drought was successfully created.' }
        format.json { render :show, status: :created, location: @drought }
      else
        format.html { render :new }
        format.json { render json: @drought.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /droughts/1
  # PATCH/PUT /droughts/1.json
  def update
    respond_to do |format|
      if @drought.update(drought_params)
        format.html { redirect_to @drought, notice: 'Drought was successfully updated.' }
        format.json { render :show, status: :ok, location: @drought }
      else
        format.html { render :edit }
        format.json { render json: @drought.errors, status: :unprocessable_entity }
      end
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
      params.require(:drought).permit(:climate_id, :drought_severity, :year)
    end
end
