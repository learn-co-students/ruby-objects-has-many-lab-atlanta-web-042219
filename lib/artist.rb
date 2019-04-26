class Artist


attr_accessor :name, :all_songs

def initialize(name)
  @name = name
  @all_songs=[]
end

def songs
  @all_songs
end

def add_song(song)
  song.artist = self
  @all_songs << song
end

def add_song_by_name(song_name)
  new_song = Song.new(song_name)
  new_song.artist = self
  @all_songs << new_song
end

def self.song_count
 Song.all.count
end

end

# ar_rahemman = Artist.new('ar')
# s1 = Song.new('tiran',ar_raheman)
#s1.artist = ar_raheman
#ar_raheman.name
