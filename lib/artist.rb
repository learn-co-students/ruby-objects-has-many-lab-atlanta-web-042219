class Artist
  attr_accessor :name, :song, :artist
  attr_reader :songs


  def initialize(name)
    @name = name
    @songs = []
  end

  def self.song_count
    Song.all.count
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    var = Song.new(song_name)
    var.artist = self
    @songs << var
  end

end
