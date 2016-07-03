class ImageUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :image
  def user_does_not_have_permission
   users_array = User.all - self.users
   users_array.map {|user| [user.name, user.id]}
  end

end
