class Artist

  @@song_count = 0

attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  self.songs << song
  song.artist = self
  @@song_count += 1
end
#self keyword to refer to the artist
#on which we are calling this method.
#We call the #artist= method on the song that is being passed in as an argument
#and set it equal to self––the artist.
def add_song_by_name(name)
  song = Song.new(name)
  add_song(song)
end

def self.song_count
  @@song_count
end
end

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
