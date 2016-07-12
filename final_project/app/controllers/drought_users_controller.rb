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
    @drought_user.drought_id = params[:drought_id]

      if @drought_user.save
         redirect_to @drought_user.drought, notice: "Drought User was successfully created."
      else
         redirect_to @drought_user.drought, notice: "Drought User was not created."
      end
    end
  end

  # PATCH/PUT /drought_users/1
  # PATCH/PUT /drought_users/1.json
  def update
    respond_to do |format|
      if @drought_user.update(drought_user_params)
        redirect_to @drought_user.drought, notice: "Drought User was Succesfullyupdated."
      else
        render :edit
      end
    end
  end

  # DELETE /drought_users/1
  # DELETE /drought_users/1.json
  def destroy
    @drought_user.destroy
      redirect_to @drought_user.drought, notice: "Drought user was safely DESTROYED."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drought_user
      @drought_user = DroughtUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drought_user_params
      params.require(:drought_user).permit(:user_id, :drought_id)
    end
