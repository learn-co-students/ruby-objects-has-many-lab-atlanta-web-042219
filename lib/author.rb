require 'pry'
class Author
  attr_accessor :name

  @@post = []

  def initialize(name)
    @name = name
    @@post << self
  end

  def posts
    @@post
  end

  def add_post(post)
    @@post << post
    post.author = self
    # binding.pry
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    @@post << new_post
    new_post.author = self
  end

  def self.post_count
    Post.all.count
  end
end
