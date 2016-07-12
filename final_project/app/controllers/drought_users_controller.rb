class DroughtUsersController < ApplicationController
  before_action :set_drought_user, only: [:show, :edit, :update, :destroy]

  # GET /drought_users
  # GET /drought_users.json
  def index
    @drought_users = DroughtUser.all
  end

  # GET /drought_users/1
  # GET /drought_users/1.json
  def show
  end

  # GET /drought_users/new
  def new
    @drought_user = DroughtUser.new
  end

  # GET /drought_users/1/edit
  def edit
  end

  # POST /drought_users
  # POST /drought_users.json
  def create
    @drought_user = DroughtUser.new(drought_user_params)

    respond_to do |format|
      if @drought_user.save
        format.html { redirect_to @drought_user, notice: 'Drought user was successfully created.' }
        format.json { render :show, status: :created, location: @drought_user }
      else
        format.html { render :new }
        format.json { render json: @drought_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drought_users/1
  # PATCH/PUT /drought_users/1.json
  def update
    respond_to do |format|
      if @drought_user.update(drought_user_params)
        format.html { redirect_to @drought_user, notice: 'Drought user was successfully updated.' }
        format.json { render :show, status: :ok, location: @drought_user }
      else
        format.html { render :edit }
        format.json { render json: @drought_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drought_users/1
  # DELETE /drought_users/1.json
  def destroy
    @drought_user.destroy
    respond_to do |format|
      format.html { redirect_to drought_users_url, notice: 'Drought user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drought_user
      @drought_user = DroughtUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drought_user_params
      params.require(:drought_user).permit(:user_id, :droughts_id)
    end
end
