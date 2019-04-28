require "pry"
# require_relative "./song.rb"
class Artist
  attr_accessor :name, :songs
@@all = []
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end


    # Song.all.select do |song|
    #   song.artist == self


  def add_song (song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end


  def self.all
    @@all
  end

  def self.song_count
    Song.all.count
  end
end
