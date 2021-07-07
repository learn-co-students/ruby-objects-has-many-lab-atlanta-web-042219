require "pry"

class Post
attr_accessor :title, :author
@@all = []

def Post.all
  @@all
end

def initialize(title)
@title = title
@@all << self

end

def author_name
  # binding.pry
  if @author != nil
    @author.name
  else
    nil

  end
end

end
