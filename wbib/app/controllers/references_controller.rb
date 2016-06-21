class ReferencesController < ApplicationController
 # before_action :set_reference, only: [:show, :edit, :destroy]

  #GET /references
  def index
   @references = Reference.all
  end

  # GET /references/1
  def show

  end

  # GET /references/new
#  def new 
 #   @reference = Reference.new
 # end
 
  # GET /
end
