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
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
end
