class Reference < ActiveRecord::Base
  validates :URL, presence: true
  validates :topic, presence: true
  validates :annotation, presence: true
 
  after_validation :my_function
  def my_function
    unless self.URL.include?("http://") || self.URL.include?("https://")
      if self.URL.blank?
        self.URL = ""
      else
        self.URL = "http://" + self.URL
      end
    end
  end
end
