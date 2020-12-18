# parses title of mp3 file into library
class MP3Importer
  attr_accessor :path
  def initialize(path)
    # sets file path
    @path = path
  end

  def files
    # returns array of all filenames in path
    Dir.children(@path)
  end

  def import
    # Song.new_by_filename each file in files
    files.each { |file| Song.new_by_filename(file) }
  end
end
