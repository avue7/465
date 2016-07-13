class DroughtsController < ApplicationController
  before_action :set_drought, only: [:edit, :update, :destroy]

  # GET /droughts
  def index
    @states = State.all
    @droughts = Drought.all
    @users = User.all
    @state_names = []
    @drought = Drought.new
    if current_user.id == 1
      current_user.update_attribute :admin, true
    end
    @drought_user = DroughtUser.new
  end

  # GET /droughts/1
  def show
    @droughts = Drought.all
    @drought = Drought.find(params[:id])
    @precipitations = Precipitation.all
#######################################################
###precipitations below this
    #### BY STATE FOR CHART 4 
    p_sorted_values = Array.new
    p_sorted_states = Array.new
    p_sorted_data = Array.new

    array_by_state =  @precipitations.sort_by {|x| x.state_abbreviation}

    array_by_state.each do |d|
        p_sorted_data.push [d.state_abbreviation, d.climate_id, d.per_year.to_f, d.year]
        p_sorted_states.push [d.state_abbreviation]
        p_sorted_values.push [d.per_year.to_f]  #use this for only values
    end

    ### BY VALUE FOR CHART 2
    p_sorted_values_by_values = Array.new
    p_sorted_data_by_values = Array.new

    p_array_by_value = @precipitations.sort_by {|p| p.per_year}
    
    p_array_by_value.each do |p|
       p_sorted_values_by_values.push [p.per_year]  #use this for values
       p_sorted_data_by_values.push [p.state_abbreviation, p.climate_id, p.per_year, p.year]
    end
#####precipitation is above this
############################################################
  # DO BY STATE
    array_by_state =  @droughts.sort_by {|x| x.state_abbreviation}
   
    d_sorted_states = Array.new
    d_sorted_data = Array.new
    sorted_string = Array.new 
    array_by_state.each do |d|
        sorted_string.push [d.state_abbreviation, d.climate_id, d.drought_severity.to_f, d.year]      
        d_sorted_states.push [d.state_abbreviation]
        d_sorted_data.push [d.drought_severity.to_f]
    end
   
    # DO BY VALUE for chart 2.
    array_by_value = @droughts.sort_by {|x| x.drought_severity.to_f}
  
    d_sort_by_value_data = Array.new
    d_sort_by_value_value = Array.new
    
    array_by_value.each do |d|
       d_sort_by_value_data.push [d.state_abbreviation, d.climate_id, d.drought_severity.to_f, d.year] 
       d_sort_by_value_value.push [d.drought_severity.to_f]
    end
    
    #data_array2 = [["one", 1.0], ["two", 2.0], ["three", 3.0],["four", 4.0],["five", 5.0], ["size", 6.0]]

   @chart4 = LazyHighCharts::HighChart.new('column') do |f|
      f.series(:name=>'Precipitation',:data=> p_sorted_values)
      f.xAxis(:categories => p_sorted_states)
      f.series(:name=>'Drought',:data=> d_sorted_data)     
      f.title({ :text=>"Ratio Between Precipitation and Drought"})
      f.options[:chart][:defaultSeriesType] = "column"
      f.plot_options({:column=>{:stacking=>"normal"}})
     end

    @chart2 = LazyHighCharts::HighChart.new('pie') do |f|
      f.title(:text => "National Drought Severity Summary (STATE, CLIMATE_ID, PDSI, YEAR)")
      f.xAxis(:categories => d_sort_by_value_data)
      f.series(:name => "PDSI", :yAxis => 0, :data => d_sort_by_value_value)
    #  f.series(:name => "Population in Millions", :yAxis => 1, :data => [310, 127, 1340, 81, 65])

      f.yAxis [
        {:title => {:text => "Palmer Drought Severity Index", :margin => 40} },
      #  {:title => {:text => "Population in Millions"}, :opposite => true},
      ]

      f.legend(:align => 'right', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical',)
      f.chart({:defaultSeriesType=>"column"})
    end
#############################################################################
  end

  # GET /droughts/new
  def new
    @drought = Drought.new
  end

  # GET /droughts/1/edit
  def edit
   @states = State.all
  end

  # POST /droughts
  # POST /droughts.json
  def create
    @drought = Drought.new(drought_params)
    @drought.user_id = current_user.id if current_user
      if @drought.save
        redirect_to droughts_path, notice: "Drought successfuly created."
      else
        redirect_to new_drought_path, notice: "Droughts not created. Cannot be EMPTY!"
      end
  end

  # PATCH/PUT /droughts/1
  # PATCH/PUT /droughts/1.json
  def update
        if @drought.update(drought_params)
        redirect_to droughts_path, notice: "Drought successfuly edited."
      else
        redirect_to droughts_path, notice: "Droughts not updated. Cannot be empty!"
      end

  end

  # DELETE /droughts/1
  # DELETE /droughts/1.json
  def destroy
    @drought.destroy
    respond_to do |format|
      format.html { redirect_to droughts_url, notice: 'Drought was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drought
      @drought = Drought.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drought_params
      params.require(:drought).permit(:climate_id, :drought_severity, :year, :state_abbreviation)
    end
end
