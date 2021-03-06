class Song
  attr_reader :name, :artist, :title

    def initialize(name)
      @name = name
    end

    def name=(name)
      @name = name
    end

    def artist=(artist_name)
      @artist = artist_name
    end

    def self.new_by_filename(filename)
      artist, song = filename.split(" - ")
      new_song = self.new(song)
      new_song.artist_name = artist
      new_song
    end
  end
