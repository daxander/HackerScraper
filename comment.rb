class Comment
  
  attr_accessor :content, :user_id
  
  def initialize(user_id, age, content)
  @content = content
  @user_id = user_id
  @age = age
  end

  def create(user_id, age, content)
    Comment.new(user_id, age, content)
  end

end