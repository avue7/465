class ReferencesController < ApplicationController
 # before_action :set_reference, only: [:show, :edit, :destroy]

  #GET /references
  def index
    @references = Reference.all
  end

  # GET /references/1
  def show 
    @reference = Reference.find(params[:id])
  end
  
  # GET /references/1/edit
  def edit
    @reference = Reference.find(params[:id])
  end
  
  # PATCH/PUT references/1
  def update
    @reference = Reference.find(params[:id])
    if @reference.update(reference_params)
      redirect_to @reference, notice: 'Reference was successfully updated.'
    else
      render :edit
    end
  end
  
  # GET /references/new
  def new 
    @reference = Reference.new
  end
  
  def create
    @reference = Reference.new(params.require(:reference).permit(:URL, :topic, :annotation))
    if @reference.save
      redirect_to @reference, notice: 'New reference was successfully created!'
    else
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_reference
    @reference = Reference.find(params[:id])
   end
    # Never trust parameters from the scary internet, only allow the white list through.
  def reference_params
    params.require(:reference).permit(:URL, :topic, :annotation)
  end
end
