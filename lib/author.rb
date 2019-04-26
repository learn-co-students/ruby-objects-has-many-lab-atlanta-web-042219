class Author

attr_accessor :name, :all_post, :author


def initialize(name)
  @name = name
  @all_post = []
end

def posts
  @all_post
end

def add_post(post)
  post.author = self
  @all_post << post
end

def add_post_by_title(title)
  new_post = Post.new(title)
  new_post.author = self
  @all_post << new_post
end

def self.post_count
  Post.all.count
end

end
