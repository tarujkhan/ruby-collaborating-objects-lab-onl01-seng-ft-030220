class mp3_importer
  
  attr_accessor :path 
  
  def inititialize(path)
    @path = path 
  end
  
  def files 
 @files  
end 

def import 
  self.files.each {|filename| Song.new_file_by_name[file_name]}
end 
