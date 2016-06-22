class Reference < ActiveRecord::Base
  validates :URL, presence: true
  validates :topic, presence: true
  validates :annotation, presence: true

  # After validates for emptiness then check to see if URL is valid by having a .com at the end.
  # Only accept when no whitespace in between and char before must not be whitespace. 
  # Also, string cannot start with space. If it is "valid" then add http:// to the beginning
  # of link if user forgets to add. 
  after_validation :my_function

  def my_function
    unless self.URL.include?("http://") || self.URL.include?("https://")
      if self.URL.blank?
        self.URL = ""
      else
        # TOP LEVEL 7 USA DOMAINS are considered "VALID" domains....
        if self.URL =~ /^\S+\b+\.com$/
          self.URL = "http://" + self.URL
        elsif self.URL =~ /^\S+\b+\.org$/
          self.URL = "http://" + self.URL
        elsif self.URL =~ /^\S+\b+\.net$/
          self.URL = "http://" + self.URL
        elsif self.URL =~ /^\S+\b+\.int$/
          self.URL = "http://" + self.URL
        elsif self.URL =~ /^\S+\b+\.edu$/ 
          self.URL = "http://" + self.URL
        elsif self.URL =~ /^\S+\b+\.gov$/
          self.URL = "http://" + self.URL
        elsif self.URL =~ /^\S+\b+\.mil$/
          self.URL = "http://" + self.URL
        else
          errors.add(:URL, "is invalid, please enter a valid USA top-level domain URL") # SHORT SIMPLE WAY TO OUTPUT AN ERROR IN VALIDATION
        end
      end
    end
  end
end
