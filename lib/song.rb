class Song
  attr_accessor :artist, :genre, :name

  @@count = 0
  @@artists = []
  @@genres = []
  ROSTER = {}

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre

    this_song = {artist => name}
    @@count += 1

    # unless @@artists.include?(artist)
    #   @@artists << artist
    # end
    #
    # unless @@genres.include?(genre)
    #   @@genres << genre
    # end

    @@artists << artist
    @@genres << genre

    if ROSTER.has_key?(genre)
      ROSTER[genre] << this_song
    else
      ROSTER[genre] = []
      ROSTER[genre] << this_song
    end
  end

  # def list_roster
  #   puts "The count is #{@@count}"
  #   puts "The Roster looks like this:"
  #   puts ROSTER
  #   puts "The Artists included are:"
  #   @@artists
  # end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end
end
