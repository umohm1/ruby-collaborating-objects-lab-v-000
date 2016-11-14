class Song
  attr_reader :name, :artist

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
   parts = filename.split(" - ")
   #song = self.new(file)
   #song.name = name

 end

end
