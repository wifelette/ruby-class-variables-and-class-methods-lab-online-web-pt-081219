class Song

  attr_accessor :artists, :genres, :name

  def initialize(name, artist, genre)
    # @name = name
    # @artist = artist
    # @genre = genre

    @name, @artist, @genre = name, artist, genre

  end
end
