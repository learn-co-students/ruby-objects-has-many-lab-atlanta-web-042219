class Author
attr_accessor :name, :posts

def initialize(author_name)
  @name = author_name
  @posts = []
end

def add_post(post)
  post.author = self
  @posts << post
end

def add_post_by_title(post_title)
  new_post = Post.new(post_title)
  new_post.author = self
  @posts << new_post

end
  # self.add_post(Post.new(post_title))

  def self.post_count
    Post.all.length
end
end
