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

  def new_by_filename (filename)
    new_name = filename.split(" - ")[1]
    song = Song.new (new_name)
    self.artist = filename.split(" - ")[2]
    song
  end

end
