class State < ActiveRecord::Base
  has_many :users
  has_many :annual_burnt_acres
  has_many :wildfires
end
