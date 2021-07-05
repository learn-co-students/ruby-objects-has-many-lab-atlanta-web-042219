class Author
	attr_accessor :name, :posts
	@@all_posts = []

	def self.all_posts
		@@all_posts
	end

	def self.post_count
		@@all_posts.size
	end

	def initialize(obj_name)
		@name = obj_name
		@posts = []
	end

	def add_post(new_post)
		@posts << new_post
		Author.all_posts << new_post
		new_post.author = self
	end

	def add_post_by_title(post_title)
		new_post = Post.new(post_title)
		new_post.author = self
		@posts << new_post
		Author.all_posts << new_post
	end
end
