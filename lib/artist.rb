require 'pry'

class Artist
  attr_reader :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
    @name = name
 end

 def add_song(song)
   self.songs << song
 end

 def self.all
   @@all
 end

 def save
   self.class.all << self
 end

 def self.create_by_name(name)
   artist = self.new
   artist.name = name
   @@all << artist
   artist
end

def self.find_by_name(name)
  @@all.detect {|artist| artist.name == name}
end

 def self.find_or_create_by_name(name)
    artist = self.new(name)
    artist.name = name
    self.all.detect do |artist|
      if artist.name == name
      else
        @@all << artist
  end
 end
end

  def print_songs
    @songs.each {|songs| puts "#{songs.name}"}
  end

end
