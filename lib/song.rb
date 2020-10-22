require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genres << genre  
    @@artists << artist

  end
  
  def self.count
    @@count
  end
  
  def self.genres
    uniq_genres = @@genres.uniq
  end
  
  def self.artists
    uniq_artists = @@artists.uniq
  end
  
  def self.genre_count
    g_count = {}
    @@genres.each do |genre|
      g_count[genre] = @@genres.count(genre)
    end
    g_count
  end
  
  def self.artist_count
    a_count = {}
    @@artists.each do |artist|
      a_count[artist] = @@artists.count(artist)
    end
    a_count
  end
  
end