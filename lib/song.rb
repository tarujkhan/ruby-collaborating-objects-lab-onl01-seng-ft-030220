class Song 
  attr_accessor :name, :artist 
  
  @@songs = []
  
  def intitialize(name)
    @name = name
    @@all << self 
  end 
  
 def self.all 
    @@all 
  end 
  
    def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
end 
  
  
  
  def self.new_by_filename(file)
   artist, song = filename.split(" - ")
  end 
  
  