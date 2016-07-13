class Drought < ActiveRecord::Base
   belongs_to :user
   has_many :users, :through => :drought_users
   has_many :drought_users
   validates :climate_id, presence: true
   validates :drought_severity, presence: true
   validates :year, presence: true
   validates :state_abbreviation, presence: true 

def self.search(search)
  where("name LIKE ?", "%#{search}%") 
  where("content LIKE ?", "%#{search}%")
end
 

   def user_does_not_have_permission
    users_array = []
    users_array = User.all - self.users
    users_array.map {|user| [user.name + " (" + user.email + ")", user.id]}
   end
end
