class Region < ActiveRecord::Base
  belongs_to :state
  has_many :droughts
  has_many :precipitations
end
