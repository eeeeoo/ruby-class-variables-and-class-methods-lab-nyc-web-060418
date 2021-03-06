require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@all = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.map {|genre| genre}.inject(Hash.new(0)) {|count, genre| count[genre] += 1; count}
  end

  def self.artist_count
    @@artists.map {|artist| artist}.inject(Hash.new(0)) {|count, artist| count[artist] += 1; count}
  end

end

# binding.pry
