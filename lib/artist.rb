class Artist
	attr_accessor :name, :songs
	@@all_songs = []

	def self.all
		@@all_songs
	end

	def self.song_count
		@@all_songs.size
	end

	def initialize(obj_name)
		@name = obj_name
		@songs = []
	end

	def add_song(new_song)
		@songs << new_song
		Artist.all << new_song
		new_song.artist = self
	end

	def add_song_by_name(song_name)
		add_song(Song.new(song_name))
		self
	end
end