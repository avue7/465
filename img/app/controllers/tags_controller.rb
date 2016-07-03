class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  # GET /tags
  def index
   @tags = Tag.all
  end

  # GET /tags/1
  def show
   @tag = Tag.find(params[:id])
   @tags = Tag.all
  end

  # GET /tags/new
  def new
    @tag = Tag.new
    @image = Image.find(params[:image_id])
  end

  # GET /tags/1/edit
  def edit
#    @image = Image.find(params[:id])
  end

  # POST /tags
  def create
    @image = Image.find(params[:image_id])
    @tag = @image.tags.new(tag_params)
    @tag.image_id = params[:image_id] 
    if @tag.save
      redirect_to @tag.image, notice: 'Tag was successfully created.'
    else
      redirect_to @tag.image, notice: 'Tag was not created.'
    end
  end

  # PATCH/PUT /tags/1
  def update
    if @tag.update(tag_params)
      redirect_to @tag.image, notice: 'Tag was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tags/1
  def destroy
    @tag.destroy
    redirect_to @tag.image, notice: 'Tag was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Nver trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:tag).permit(:str, :image_id)
    end
end
