class Image < ActiveRecord::Base
  has_many :tags
  has_many :image_users
  has_many :users, :through => :image_user
  belongs_to :user
end
