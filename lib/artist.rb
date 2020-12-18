# has many songs
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def self.find_or_create_by_name(name)
    artiste = all.find { |artist| artist.name == name }
    return artiste unless artiste.nil?

    new(name)
  end

  def print_songs
    songs.each { |song| puts song.name.to_s }
  end
end
