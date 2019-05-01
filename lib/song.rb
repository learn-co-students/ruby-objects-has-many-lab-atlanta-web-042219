require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist
      @artist.name
    else
      nil
    end
  end

  # def artist=(value)
  #   @artist = value
  # end
end
