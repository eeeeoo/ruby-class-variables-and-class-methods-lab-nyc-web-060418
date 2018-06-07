class Song

  @@artists = []
  @@count = 0
  @@genre = []

  attr_accessor :name, :artist, :genre

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << self.artist
    @@genre << self.genre
  end

end
