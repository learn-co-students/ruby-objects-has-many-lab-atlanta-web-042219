require 'pry'
class Artist

attr_accessor :name, :songs
@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end


def add_song(song)
  song.artist = self
  @songs << song
end

def add_song_by_name(song_name)
  song = Song.new(song_name)
  song.artist = self
  @songs << song
end

def self.song_count
  songs = []
  @@all.each do |artist|
    artist.songs.each do |song|
      songs << song
    end
  end
  songs.length
end


end
