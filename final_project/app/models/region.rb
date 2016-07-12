class Region < ActiveRecord::Base
  belongs_to :state
  has_many :droughts
end
