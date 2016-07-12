class Drought < ActiveRecord::Base
   belongs_to :region

   def all_states_list
    states_array = State.all
    states_array.map {|state| [state.state_abbreviation + " (" + state.state_name + ")", state.id]}
   end
end
