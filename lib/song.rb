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
      song = self.new
      binding.pry
      song.artist = song.split(" - ")[0]
    song
  
  end
  
  
end