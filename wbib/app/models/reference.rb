class Reference < ActiveRecord::Base
  validates :URL, presence: true
  validates :topic, presence: true
  validates :annotation, presence: true
end
