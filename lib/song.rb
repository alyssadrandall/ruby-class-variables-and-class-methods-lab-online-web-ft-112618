class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
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
    genre_song_count = {}
    @@genres.each do |genre|
    genre_song_count[genre] ? genre_song_count[genre] += 1 : genre_song_count[genre] = 1
  end 
  genre_song_count
  end  
  
  def self.artist_count
    artist_song_count = {}
    @@artists.each do |artist|
    artist_song_count[artist] ? artist_song_count[artist] += 1 : artist_song_count[artist] = 1
  end 
  artist_song_count
  end  

end 