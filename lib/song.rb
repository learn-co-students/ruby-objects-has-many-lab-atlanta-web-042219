class Song


  attr_accessor :name, :new, :artist

@@all = []
  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end


def self.all
  @@all
end

def artist_name
  if artist
  @artist.name
end
end

end
