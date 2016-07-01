class Image < ActiveRecord::Base
  has_many :tag
  has_many :image_user
  belongs_to :user, dependent: :destroy
end
