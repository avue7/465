class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  def index 
    @images = Image.all
#    @image = Image.find(current_user.id)
    if user_signed_in? == true
      @image_users = ImageUser.all
    end
    @users = User.all
    @tags = Tag.all
  end

  # GET /images/1
  def show
    load "#{Rails.root}/db/words.rb"
    @image = Image.find(params[:id])
    @user = current_user
    @image_owner = current_user
    @users = User.all
    @tags = Tag.all
    @tag = Tag.find(params[:id])
    @image_users = ImageUser.all
    @image_user = []
    @image_user = @image.image_users.new
  end
  # GET /images/new
  def new
    @image = Image.new
    @tag = Tag.new
    @tags = @image.tags.new
  #  @tag = Tag.create(image_id: @image.id, str: :tags) 
  end

  # GET /images/1/edit
  def edit
    @image = Image.find(params[:id])
    @image.user = current_user     
    @tags = Tag.all
    @images = Image.all
    @user_all = User.all
    @image_users = ImageUser.all
  end

  # POST /images
  def create
    @image = Image.new(image_params)
    generate_filename # a function you write to generate a random filename
			     # and put it in the images "filename" variable
    @image.user = current_user
    
    @uploaded_io = params[:image][:uploaded_file]
    
    File.open(Rails.root.join('public', 'images', @image.filename), 'wb') do |file|
        file.write(@uploaded_io.read)
    end
    if @image.save
      redirect_to @image, notice: 'Image was successfully created.'
    else
      render :new
    end
  end

  def generate_filename
    @random_string = Array.new(32){rand(36).to_s(36)}.join
    @image.filename = @random_string
  end
  # PATCH/PUT /images/1
  def update
    if @image.update(image_params)
      redirect_to @image, notice: 'Image was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /images/1
  def destroy
    @image.destroy
      redirect_to images_path, notice: 'Image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:filename, :private, :user_id)
    end
  end 
