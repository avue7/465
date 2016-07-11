class StateDroughtPre < ActiveRecord::Base
  belongs_to :drought
  belongs_to :precipitation
  belongs_to :state
end
