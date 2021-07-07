class Author

@@all = []
attr_accessor :name, :posts

def initialize(name)
  @name = name
  @posts = []
  @@all << self
end


def add_post(post)
  post.author = self
  @posts << post
end


def add_post_by_title(title)
  new_post = Post.new(title)
  new_post.author = self
  @posts << new_post
end

def self.post_count
  all_posts = []
  @@all.each do |author|
    author.posts.each do |posts|
      all_posts << posts
    end
  end
  all_posts.length
end

end
