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

    # This is how it would work if we avoided dupes right up front:
    #
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

  def self.genre_count
    genres_hash = {}

    @@genres.each do |genre|
      if genres_hash.has_key?(genre)
        genres_hash[genre] +=1
      else
        genres_hash[genre] = 1
      end
    end

    genres_hash
  end

  def self.artist_count
    artists_hash = {}

    @@artists.each do |artist|
      if artists_hash.has_key?(artist)
        artists_hash[artist] +=1
      else
        artists_hash[artist] = 1
      end
    end

    artists_hash
  end

end
