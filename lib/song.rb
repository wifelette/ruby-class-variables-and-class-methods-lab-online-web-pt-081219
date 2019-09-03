class Song

  attr_accessor :artists, :genres, :name

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  end
end
