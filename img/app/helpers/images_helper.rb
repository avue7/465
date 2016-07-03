module ImagesHelper
  def user_names
    User.all.collect { |n| [n.name,n.id] }
  end 
end
