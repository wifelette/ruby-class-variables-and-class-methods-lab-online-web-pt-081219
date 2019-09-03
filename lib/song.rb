class Song
  attr_accessor :artist, :genre, :name

  @@genre_count = 0
  @@genre_artists = []
  ROSTER = {}

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre

    this_song = {artist => name}
    @@genre_count += 1

    unless @@genre_artists.include?(artist)
      @@genre_artists << artist
    end

    if ROSTER.has_key?(genre)
      ROSTER[genre] << this_song
    else
      ROSTER[genre] = []
      ROSTER[genre] << this_song
    end
  end

  def list_roster
    puts "The count is #{@@genre_count}"
    puts "The Roster looks like this:"
    puts ROSTER
    puts "The Artists included are:"
    @@genre_artists
  end
end
