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

    drought_abbrev = Array.new
    drought_severity = Array.new
    drought_year = Array.new
    @droughts.each do |d|
      drought_abbrev.push [d.state_abbreviation]
      drought_severity.push [d.drought_severity.to_f]
      drought_year.push [d.year]
    end
    
    drought_year.sort!
    drought_severity.sort!
    ###########################################################################
    data_array = Array.new
    
   # array_by_serverity = Array.new
    sorted_serv = Array.new
    array_by_serverity =  @droughts.sort_by {|x| x.drought_severity.to_f}

    array_by_serverity.each do |d|
        sorted_serv.push [d.state_abbreviation, d.climate_id, d.drought_severity.to_f, d.year]
    end

    @droughts.each do |d|
	data_array.push [d.state_abbreviation, d.climate_id, d.drought_severity.to_f, d.year]
    end
    
    #data_array2 = [["one", 1.0], ["two", 2.0], ["three", 3.0],["four", 4.0],["five", 5.0], ["size", 6.0]]
   @chart4 = LazyHighCharts::HighChart.new('column') do |f|
      f.series(:name=>'John',:data=> [3, 20, 3, 5, 4, 10, 12 ])
      f.series(:name=>'Jane',:data=>[1, 3, 4, 3, 3, 5, 4,-46] )     
      f.title({ :text=>"example test title from controller"})
      f.options[:chart][:defaultSeriesType] = "column"
      f.plot_options({:column=>{:stacking=>"percent"}})
       end
    @chart2 = LazyHighCharts::HighChart.new('pie') do |f|
      f.title(:text => "National Drought Severity Summary (STATE, CLIMATE_ID, PDSI, YEAR)")
      f.xAxis(:categories => sorted_serv)
      f.series(:name => "PDSI", :yAxis => 0, :data => drought_severity)
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
