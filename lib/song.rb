require 'pry'

class Song
attr_accessor :name, :artist
# attr_reader
@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end


    def artist_name
        # binding.pry
        artist.name if artist
    end

    def self.all
        @@all
    end
end