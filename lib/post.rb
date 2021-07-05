class Post
	attr_accessor :title, :author
	@@all = []

	def self.all
		@@all
	end

	def initialize(obj_title)
		@title = obj_title
		Post.all << self
	end

	def author_name
		if @author == nil
			nil
		else
			@author.name
		end
	end
end
