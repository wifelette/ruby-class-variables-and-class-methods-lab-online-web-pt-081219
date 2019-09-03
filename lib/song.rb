class Song

  attr_accessor :artists, :genres, :name

  @@genre_count = 0
  @@genre_artists = []
  @@genre_roster = {}

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@genre_count += 1
    @@genre_artists << artist
    @@genre_roster[genre] = artist
    @@genre_roster[genre][artist] = name 
  end
end
