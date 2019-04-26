require "pry"
class Author
    attr_reader :name, :posts
    @@count = 0

    def initialize(name)
        @name = name
        @posts = []

    end

    def add_post(post)
        @posts << post
        post.author = self
        @@count += 1
    end

    def add_post_by_title(input)
        post = Post.new(input)
        add_post(post)
    end

    def self.post_count
        @@count
    end
end