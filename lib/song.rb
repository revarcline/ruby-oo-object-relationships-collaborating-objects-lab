# belongs to artist
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(filename)
    pieces = filename.split(' - ')
    song = new(pieces[1])
    song.artist_name = pieces[0]
    song
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end
