class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename (filename)
    name = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    song = Song.new(name)
    #song.artist = artist
    song
  end

end
