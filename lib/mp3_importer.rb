class MP3Importer
 attr_accessor :path

  def initialize(path = "./db/mp3s")
   @path = path
  end

  def files
    files = Dir.entries("mp3s")
    puts files
  end

    def import(list_of_filenames)
      list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
    end
  end

end
