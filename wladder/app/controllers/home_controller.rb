class HomeController < ApplicationController
  def index
    # Load the file in the library to use its helper functions.
    load "#{Rails.root}/lib/ladder.rb" 
    @start_word = dictionary.shuffle.first
    @end_word = dictionary.shuffle.last 
    while @start_word == @end_word do #making sure the start and end words dont match
      @start_word = dictionary.shuffle.first
      @end_word = dictionary.shuffle.last
    end  
  end

  def show
    # Load the file in the library for use of helper functions
    load "#{Rails.root}/lib/ladder.rb"
    # EVERYONE IS A WINNER!!!!!! UNTIL YOU LOSE!
    @steps = []
    # Set the symbols to the member variables so we can use them outside
    # of this function and class.
    @winner = 0
    @start_word = params[:start_word]
    @step_1 = params[:step1] 
    @step_2 = params[:step2]
    @step_3 = params[:step3]
    @step_4 = params[:step4]
    @step_5 = params[:step5]
    @end_word = params[:end_word]
    # Test to see if steps are empty, if not push onto array steps
    if params[:step1].present?
      @steps.push(@step_1)
    end
    if params[:step2].present?
      @steps.push(@step_2)
    end
    if params[:step3].present?
      @steps.push(@step_3)
    end
    if params[:step4].present?
      @steps.push(@step_4)
    end
    if params[:step5].present?
      @steps.push(@step_5)
    end
    # DETERMINE if we have a winner.
    @steps_to_check = []
    @steps_to_check.push(@start_word)
    @steps.each { |step| @steps_to_check.push(step)}
    @steps_to_check.push(@end_word)
    
    if legal @steps_to_check
      @winner = @winner + 1
    end
    if @steps.size == 0
      @winner = @winner - 1
    end
 end 
end										
