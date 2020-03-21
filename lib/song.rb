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
  artist.add_song(name)
end 
  
  
  
  def self.new_by_filename(file)
    song_names = file.split("-")[1]
    artist = file.split("-")[0]
    song = self.new(song_name)
    song.artist_name = artist 
    song 
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  self.artist.add_song(self)
end 