require 'pry'
class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  # def posts
  #   @posts
  # end
  #
  # def posts=(value)
  #   @posts = value
  # end

  def add_post(post)
    @posts << post
    post.author = self #to make sure? / capital
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    # Post.all.count
    Post.all.count
  end

end
