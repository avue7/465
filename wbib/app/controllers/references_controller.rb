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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference
      @reference = Reference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reference_params
      params.require(:reference).permit(:URL, :topic, :annotation,)
    end
  # GET /references/new
#  def new 
 #   @reference = Reference.new
 # end
 
  # GET /
end
