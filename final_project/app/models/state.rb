class State < ActiveRecord::Base
  has_many :droughts, through: :regions
  has_many :regions
  has_many :droughts
   def all_states_list
    states_array = State.all
    states_array.map {|state| [state.state_abbreviation + " (" + state.state_name + ")", state.id]}
   end


end
