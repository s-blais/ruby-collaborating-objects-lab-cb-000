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
    song = self.new(split_name)
    artist.name = split_artist
    song
  end

  def artist_name=

end
