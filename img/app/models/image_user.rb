class ImageUser < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :image, dependent: :destroy
end
