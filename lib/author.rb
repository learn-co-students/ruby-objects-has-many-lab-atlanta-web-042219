class Author
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post_obj)
    post_obj.author = self
    @posts << post_obj
  end

  def add_post_by_title(title_string)
    post_obj = Post.new(title_string)
    post_obj.author = self
    @posts << post_obj
  end

  def self.post_count
    Post.all.count
  end

end
