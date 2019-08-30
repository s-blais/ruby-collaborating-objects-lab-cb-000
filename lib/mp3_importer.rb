class MP3Importer

  attr_accessor :path

  def initialize (path)
    @path = path
  end

  def files
    Dir.entries(@path)
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(filename) #if file.end_with? (".mp3")
    end
  end
    #fetch list of files from path
    #loop through the files and call new_by_filename  I think


end
