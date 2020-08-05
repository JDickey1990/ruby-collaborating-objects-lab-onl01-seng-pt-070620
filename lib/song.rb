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
  
  def self.new_by_filename(some_filename)
    song = self.new
    some_filename.each do |file|
      song.artist = file.split(" - ")[0]
    song
    end
  end
  
  
end