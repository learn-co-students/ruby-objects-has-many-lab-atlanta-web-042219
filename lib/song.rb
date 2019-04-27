class Song

@@all = []
attr_accessor :name, :artist

def initialize(name)
  @name = name
  @artist = artist
  @@all << self
end

def artist_name
  if artist
    artist.name
end
end

def self.all
  @@all
end
end
