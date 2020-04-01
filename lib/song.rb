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
    #needs to control duplicates 
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq  
  end 
  
  def self.genre_count
    hash_histogram_genre = {}
    @@genres.each { |genre|
      if hash_histogram_genre.keys.include?(genre)
        hash_histogram_genre[genre] += 1 
      else 
        hash_histogram_genre[genre] = 1 
      end 
    }
    hash_histogram_genre
  end 
  
  def self.artist_count
    hash_histogram_artist = {}
    @@genres.each { |artist|
      if hash_histogram_artist.keys.include?(artist)
        hash_histogram_artist[artist] += 1 
      else 
        hash_histogram_artist[genre] = 1 
      end 
    }
    hash_histogram_artist
  end 
    
end 

