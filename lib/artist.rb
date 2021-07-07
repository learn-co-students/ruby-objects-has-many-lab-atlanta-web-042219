require "pry"
require_relative "./song.rb"

class Artist
  attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song_obj)
  @songs << song_obj
  song_obj.artist = self
end

def add_song_by_name(song_name)
  new_song = Song.new(song_name)
    @songs << new_song
    new_song.artist = self
end

def self.song_count
  Song.all.count

end

end

# kanye = Artist.new("Kanye West")
# test = Song.new("test")
# kanye.add_song(test)





# def add_song_by_name(song)
#   song.new.artist
#
# end
#
#   def add_song_by_title(song)
#     song.artist
# end
#
# song.song.artist_name
#
#
# some_post.author_name
