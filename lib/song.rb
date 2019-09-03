class Song

  attr_accessor :artists, :genres, :name

  @@genre_count = 0
  @@genre_artists = []
  @@genre_roster = {}

  # @@artist_count = 0
  # @@artist_genre = []
  # @@artist_roster = {}

  def initialize(name, artist, genre)
    # @name = name
    # @artist = artist
    # @genre = genre
    @name, @artist, @genre = name, artist, genre
    # @@genre_count += 1

  end
end
