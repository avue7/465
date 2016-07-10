class AnnualBurntAcresController < ApplicationController
  before_action :set_annual_burnt_acre, only: [:show, :edit, :update, :destroy]

  # GET /annual_burnt_acres
  # GET /annual_burnt_acres.json
  def index
    @annual_burnt_acres = AnnualBurntAcre.all
  end

  # GET /annual_burnt_acres/1
  # GET /annual_burnt_acres/1.json
  def show
  end

  # GET /annual_burnt_acres/new
  def new
    @annual_burnt_acre = AnnualBurntAcre.new
  end

  # GET /annual_burnt_acres/1/edit
  def edit
  end

  # POST /annual_burnt_acres
  # POST /annual_burnt_acres.json
  def create
    @annual_burnt_acre = AnnualBurntAcre.new(annual_burnt_acre_params)

    respond_to do |format|
      if @annual_burnt_acre.save
        format.html { redirect_to @annual_burnt_acre, notice: 'Annual burnt acre was successfully created.' }
        format.json { render :show, status: :created, location: @annual_burnt_acre }
      else
        format.html { render :new }
        format.json { render json: @annual_burnt_acre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annual_burnt_acres/1
  # PATCH/PUT /annual_burnt_acres/1.json
  def update
    respond_to do |format|
      if @annual_burnt_acre.update(annual_burnt_acre_params)
        format.html { redirect_to @annual_burnt_acre, notice: 'Annual burnt acre was successfully updated.' }
        format.json { render :show, status: :ok, location: @annual_burnt_acre }
      else
        format.html { render :edit }
        format.json { render json: @annual_burnt_acre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annual_burnt_acres/1
  # DELETE /annual_burnt_acres/1.json
  def destroy
    @annual_burnt_acre.destroy
    respond_to do |format|
      format.html { redirect_to annual_burnt_acres_url, notice: 'Annual burnt acre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annual_burnt_acre
      @annual_burnt_acre = AnnualBurntAcre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def annual_burnt_acre_params
      params.require(:annual_burnt_acre).permit(:acres_per_sq_miles, :year, :state_id)
    end
end
