class Image < ActiveRecord::Base
  has_many :tags, dependent: :destroy
  has_many :users, :through => :image_users
  has_many :image_users
  belongs_to :user
  
  def user_does_not_have_permission
   users_array = []
   users_array = User.all - self.users
   users_array.map {|user| [user.name,user.id]}
  end

  def delete_users_from_image_users
   users_array = []
   users_array = ImageUser.all - self.image_users
   users_array.map do |user|
     if user.image.id == user.user.id
       [user.user.name, user.user.id]
     end
   end
  end
end
