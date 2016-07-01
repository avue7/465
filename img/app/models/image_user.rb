class ImageUser < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :image_id
end
