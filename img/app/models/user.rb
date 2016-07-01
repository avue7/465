class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Validate to make sure name field for signing up user is not blank
  validates :name, presence: true
  has_many :image
  has_many :image_user
end
