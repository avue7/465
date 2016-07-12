class DroughtUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :droughts
end
