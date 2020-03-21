class mp3_importer
  
  attr_accessor :path 
  
  def inititialize(path)
    @path = path 
  end
  
  def files 
 @files ||= Dir.glob("#{path}/*.mp3").collect do |file|
   file.gsub("#{path}/", "")
end 

def import 
  files.each {|filename| Song.new_by_filename[file_name]}
end 
