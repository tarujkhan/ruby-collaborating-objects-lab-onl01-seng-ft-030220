class Mp3_importer
  
  attr_accessor :path 
  
  def inititialize(path)
    @path = path 
  end
  
  def files 
 @files ||= Dir.glob("#{path}/*.mp3").collect do |file|
   file.gsub("#{path}/", "")
end 
end 

def import 
  files.each { | file | Song.new_by_filename(file)}
end 
end 