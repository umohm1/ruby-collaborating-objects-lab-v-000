class MP3Importer
 attr_accessor :path

  def initialize(path = "./db/mp3s")
   @path = path
  end

  def files(filename)
    files = Dir.glob("*.mp3s")
    puts files
  end

  def import
  #  importer = MP3Importer.new(path)
  end

end
