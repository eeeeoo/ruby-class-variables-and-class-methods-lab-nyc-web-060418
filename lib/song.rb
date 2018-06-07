require 'pry'
class Song

  @@artists = []
  @@count = 0
  @@genres = []

  attr_accessor :name, :artist, :genre, :genre_hash

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << self.artist
    @@genres << self.genre
    @@count += 1
    @genre_hash = {}
    @artist_hash = {}

  end

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
    # @@genres.find do |genre|
    #   value = 0
    #   if @@genres.count(genre) > 1
    #     value += 1
    #     @genre_hash[:genre] = value
    #   else
    #     @genre_hash[:genre] = @genre.count
    #   end
    # end
    binding.pry
    @@genres
    @genre_hash
  end
  #
  # def self.artist_count
  #
  # end

end
