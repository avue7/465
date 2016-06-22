class Reference < ActiveRecord::Base
  before_validation :my_function
  validates :click_through_url, URL:true
  validates :URL, presence: true
  validates :topic, presence: true
  validates :annotation, presence: true

  def my_function
    unless self.URL.include?("http://") || self.URL.include?("https://")
      self.URL = "http://" + self.URL
    end
  end
end
