class Author
  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def self.post_count
    Post.all.count
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    new = Post.new(title)
    @posts << new
    new.author = self
  end

end
