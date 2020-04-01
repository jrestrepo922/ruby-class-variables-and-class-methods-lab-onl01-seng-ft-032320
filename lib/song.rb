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
    hash_histogram = {}
    @@genres.each { |genre|
      if hash_histogram.keys.include?(genre)
        hash_histogram[genre] += 1 
      else 
        hash_histogram[genre] = 1 
      end 
    }
    hash_histogram
  end 
  
  
end 

