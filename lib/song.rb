class Song
  @@all = []
  attr_reader :name
  attr_accessor :artist, :artist_name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist != nil ? self.artist.name : nil
  end

end
