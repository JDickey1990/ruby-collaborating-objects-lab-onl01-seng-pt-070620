require "pry"
class Song 
  
 attr_accessor :name, :artist 
 
 @@all = []
 
 def initialize(name)
   @name = name 
   @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = self.new(song_info[1])
    Artist.song_info[0]
  binding.pry
end
  
end