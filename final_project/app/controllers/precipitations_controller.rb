class PrecipitationsController < ApplicationController
  before_action :set_precipitation, only: [:edit, :update, :destroy]

  # GET /precipitations
  # GET /precipitations.json
  def index
    @precipitations = Precipitation.all
    @states = State.all
    @droughts = Drought.all
    @users = User.all
    @state_names = []
    @drought = Drought.new
    if current_user.id == 1
      current_user.update_attribute :admin, true
    end
  end

  # GET /precipitations/1
  def show
    @precipitations = Precipitation.all
    @precipitation = Precipitation.find(params[:id])
    @droughts = Drought.all
#############################################################################
#droughts are below this
    array_by_state =  @droughts.sort_by {|x| x.state_abbreviation}
   
    d_sorted_states = Array.new
    d_sorted_data = Array.new
    array_by_state.each do |d|
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
##Droughts are above this
################################################################

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
################################################################################################
   @chart4 = LazyHighCharts::HighChart.new('column') do |f|
      f.series(:name=>'Precipitation',:data=> p_sorted_values)
      f.xAxis(:categories => p_sorted_states)
      f.series(:name=>'Drought',:data=> d_sorted_data)
      f.title({ :text=>"Ratio Between Precipitation and Drought"})
      f.options[:chart][:defaultSeriesType] = "column"
      f.plot_options({:column=>{:stacking=>"normal"}})
     end

    @chart2 = LazyHighCharts::HighChart.new('pie') do |f|
      f.title(:text => "National Precipitaion Summary (STATE, CLIMATE_ID, IPY, YEAR)")
      f.xAxis(:categories => p_sorted_data_by_values)
      f.series(:name => "Inches Per Year", :yAxis => 0, :data => p_sorted_values_by_values)
    #  f.series(:name => "Population in Millions", :yAxis => 1, :data => [310, 127, 1340, 81, 65])

      f.yAxis [
        {:title => {:text => "Inches Per Year", :margin => 40} },
      #  {:title => {:text => "Population in Millions"}, :opposite => true},
      ]

      f.legend(:align => 'right', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical',)
      f.chart({:defaultSeriesType=>"column"})
    end



   #############################################################################
  end

  # GET /precipitations/new
  def new
    @precipitation = Precipitation.new
  end

  # GET /precipitations/1/edit
  def edit
@states = State.all
  end

  # POST /precipitations
  # POST /precipitations.json
  def create
    @precipitation = Precipitation.new(precipitation_params)

    @precipitation.user_id = current_user.id if current_user
      if @precipitation.save
        redirect_to precipitations_path, notice: "Precipitation successfuly created."
      else
        redirect_to new_precipitation_path, notice: "Precipitation not created. Cannot be EMPTY!"
      end
  end

  # PATCH/PUT /precipitations/1
  # PATCH/PUT /precipitations/1.json
  def update
        if @precipitation.update(precipitation_params)
        redirect_to precipitations_path, notice: "Precipitation successfuly edited."
      else
        redirect_to precipitations_path, notice: "Precipitation not updated. Cannot be empty!"
      end
  end

  # DELETE /precipitations/1
  # DELETE /precipitations/1.json
  def destroy
    @precipitation.destroy
    respond_to do |format|
      format.html { redirect_to precipitations_url, notice: 'Precipitation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precipitation
      @precipitation = Precipitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def precipitation_params
      params.require(:precipitation).permit(:climate_id, :per_year, :year, :state_abbreviation, :user_id)
    end
end
