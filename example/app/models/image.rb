class Image < ActiveRecord::Base
  belongs_to :user

  def user_does_not_have_permission
    :wq


end
