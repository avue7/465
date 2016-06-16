class HomeController < ApplicationController
  def index
    
  end

  def show
    load "#{Rails.root}/lib/ladder.rb"
    @step_1 = params[:step1]
    @step_2 = params[:step2]
    @step_3 = params[:step3]
    @step_4 = params[:step4]
    @step_5 = params[:step5]
  end
end
