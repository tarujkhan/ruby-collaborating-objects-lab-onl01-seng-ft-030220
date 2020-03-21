class Artist  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
   def self.all 
    @@all 
  end 
  
  def songs
    Song.all.select { | song | song.artist == self}
  end 


  def add_song(song)
    song.artist = self 
  end 
  
  def save
    @@all << self 
    self
  end
  
  def self.find_or_create_by_name(name)
    self.all.find {|artist| artist.name == name} || self.name(name).save
end 

def self.find(name)
  self.all.find {|artist| artist.name == name}
end 

def print_songs
  @songs.each do |song|
    puts song.name
end 
end
end 