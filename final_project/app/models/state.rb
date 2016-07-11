class State < ActiveRecord::Base
  belongs_to :user
  has_many :annual_burnt_acres
  has_many :wildfires
end
