class Comment
  
  attr_accessor :content, :user_id
  
  def initialize(user_id, content)
    @content = content
    @user_id = user_id
  end

  def create(user_id,content)
    Comment.new(user_id, content)
  end

end