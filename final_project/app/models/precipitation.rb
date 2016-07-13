class Precipitation < ActiveRecord::Base
  belongs_to :user
  has_many :users, :through => :drought_users
  has_many :drought_users

end
