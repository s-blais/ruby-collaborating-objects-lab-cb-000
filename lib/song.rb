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
    split_name = filename.split(" - ")[1]
    split_artist = filename.split(" - ")[0]
    song = Song.new(split_name)
    song.artist = split_artist
    song
  end

end
