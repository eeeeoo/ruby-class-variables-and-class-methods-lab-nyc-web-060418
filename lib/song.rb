require 'pry'
class Song

  @@artists = []
  @@count = 0
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << self.artist
    @@genres << self.genre
    @@count += 1
  end

  def count
    count_songs = []
    count_songs << self.name
    @@count += count_songs.length
    binding.pry
    return @@count
  end

  def artists

  end

end
